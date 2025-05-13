import sys
import requests
import json
import re
import os
import subprocess
import packaging
from packaging.requirements import Requirement
from packaging.specifiers import SpecifierSet
from packaging.version import Version, InvalidVersion
from packaging.version import parse

iuse = []

def is_version_equal(v1, v2):
    return v1.major == v2.major and v1.minor == v2.minor and v1.micro == v2.micro

def fetch_pypi_metadata(package_name, package_version, specifier_type):
    url = f"https://pypi.org/pypi/{package_name}/json"
    response = requests.get(url)
    if response.status_code != 200:
        raise Exception(f"Failed to fetch metadata for {package_name} from PyPI.")

    data = response.json()
    all_versions = []

    # Get all available versions
    for v in data.get('releases', {}).keys():
        try:
            vers = Version(v)
            if specifier_type == "~":
                all_versions.append(v)
            elif not vers.is_prerelease:
                all_versions.append(v)
        except InvalidVersion:
            continue

    if specifier_type == "~":
        filtered_versions = [v for v in all_versions if is_version_equal(packaging.version.parse(v), packaging.version.parse(package_version))]
    elif specifier_type == "<":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) < packaging.version.parse(package_version)]
    elif specifier_type == "<=":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) <= packaging.version.parse(package_version)]
    elif specifier_type == ">":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) > packaging.version.parse(package_version)]
    elif specifier_type == ">=":
        filtered_versions = [v for v in all_versions if packaging.version.parse(v) >= packaging.version.parse(package_version)]

    if filtered_versions:
        v = max(filtered_versions, key=packaging.version.parse)
        url = f"https://pypi.org/pypi/{package_name}/{v}/json"
    else:
        url = f"https://pypi.org/pypi/{package_name}/json"

    response = requests.get(url)
    if response.status_code != 200:
        raise Exception(f"Failed to fetch metadata for {package_name} from PyPI.")

    return response.json()


def parse_python_compat(requires_python):
    python_versions = []
    if requires_python:
        specifier_set = SpecifierSet(requires_python)
        # Check against a list of supported Python versions
        supported_versions = [
            '3.10', '3.11', '3.12', '3.13'
        ]
        for version in supported_versions:
            if Version(version) in specifier_set:
                major, minor = version.split('.')
                python_versions.append(f"{minor}")
    return python_versions

def remove_prerelease_identifiers(version_string, add):
        version = Version(version_string)
        # Construct the version string without pre-release information
        # Default to 0 for any missing components
        return f"{version.major + add[0]}.{version.minor + add[1]}.{version.micro + add[2]}"

def parse_atom(dist, use_flags, required_extras):
    if dist == 'airtouch4pyapi==1.0.5':
        return parse_atom('airtouch4pyapi==1.0.8', use_flags, required_extras)
    if dist == 'aenum>=3.1.11':
        return parse_atom('aenum<3.1.16,>=3.1.11', use_flags, required_extras)

    dependencies = []
    deps = []
    try:
        req = Requirement(dist)
        spec_operator = ''
        spec_version = ''

        if req.marker:
            if 'extra' in str(req.marker):
                if not any(marker in str(req.marker) for marker in required_extras):
                    return [dependencies, deps]

            if any(marker in str(req.marker) for marker in ['sys_platform', 'python_version', 'platform_system']):
                environment = {
                    'python_version': '3.13',
                    'platform_system': 'Linux',
                }
                if not req.marker.evaluate(environment):
                    return [dependencies, deps]

        print(req)
        spec_major = [0,0,0]
        if req.specifier:
            for spec in req.specifier:
                spec_operator = spec.operator
                if spec.operator == '!=':
                    continue
                if spec.version == '1000000000.0.0':
                    continue
                if spec.operator == '==' and spec.version.endswith('*'):
                    spec_operator = '<'
                    spec_major[str(spec.version).replace('*', '0').count('.') - 1] = 1
                elif spec.operator == '==':
                    spec_operator = '~'
                elif spec.operator == '~=':
                    spec_operator = '<'
                    spec_major[str(spec.version).count('.') - 1] = 1
                new_name = f"{req.name.lower().replace('.', '-').replace('_', '-')}"
                new_name = re.sub(r'-(\d+)$', r'_\1', new_name)
                spec_version = remove_prerelease_identifiers(str(spec.version).replace('*', '0'), spec_major)
                if not deps:
                    deps = [new_name, spec_version, spec_operator, req.extras]
                elif spec.operator == '<' or spec.operator == '<=':
                    deps = [new_name, spec_version, spec_operator, req.extras]
                if use_flags:
                    for use_flag in use_flags:
                        dependencies.append(f"\t{use_flag}? ( {spec_operator}dev-python/{new_name}-{spec_version}[${{PYTHON_USEDEP}}] )")
                else:
                    dependencies.append(f"\t{spec_operator}dev-python/{new_name}-{spec_version}[${{PYTHON_USEDEP}}]")
            return [dependencies, deps]
        else:
            new_name = f"{req.name.lower().replace('.', '-').replace('_', '-')}"
            new_name = re.sub(r'-(\d+)$', r'_\1', new_name)
            deps = [new_name, '0.0.0', '>=', []]
            dep_str = f"\tdev-python/{new_name}[${{PYTHON_USEDEP}}]"
            dependencies.append(dep_str)
            return [dependencies, deps]
    except Exception as e:
        print(f"Error parssing requirement '{dist}': {e}")

def parse_requires_dist(requires_dist, required_extras):
    dependencies = []
    deps = []
    if requires_dist:
        for dist in requires_dist:
            atom = parse_atom(dist, [], required_extras)
            dependencies.extend(atom[0])
            deps.append(atom[1])
    return [dependencies, deps]

def find_matching_license_file(license_string, license_dir="/var/db/repos/gentoo/licenses/"):
    try:
        # List all files in the license directory
        license_files = os.listdir(license_dir)
    except FileNotFoundError:
        print(f"Directory not found: {license_dir}")
        return 'BSD'

    # Find the file that matches the beginning of the license string
    for license_file in license_files:
        if license_string.startswith(license_file):
            return license_file

    return 'BSD'


def convert_to_ebuild(metadata, required_extras):
    """Convert PyPI metadata to a simple Gentoo ebuild format."""
    info = metadata['info']
    package_name = info['name']
    version = info['version']
    homepage = info['home_page'] or info['project_url']
    urls = info['project_urls']
    repository = ''
    src_uri = ''
    if urls and (urls.get('Repository', '') or '').startswith('https://github.com/'):
        repository = urls.get('Repository', '')
    if urls and (urls.get('repository', '') or '').startswith('https://github.com/'):
        repository = urls.get('repository', '')
    if urls and (urls.get('source Code', '') or '').startswith('https://github.com/'):
        repository = urls.get('Source Code', '')
    if urls and (urls.get('Homepage', '') or '').startswith('https://github.com/'):
        repository = urls.get('Homepage', '')
    if urls and (urls.get('homepage', '') or '').startswith('https://github.com/'):
        repository = urls.get('homepage', '')
    if urls and (urls.get('Download', '') or '').startswith('https://github.com/'):
        src_uri = urls.get('Download', '')
    if (info.get('home_page', '') or '').startswith('https://github.com/'):
        repository = info.get('home_page', '')
    if (info.get('project_url', '') or '').startswith('https://github.com/'):
        repository = info.get('project_url', '')

    description = re.sub(r'[^a-zA-Z0-9 ]', '', (info.get('summary', '') or ''))
    license_ = find_matching_license_file((info.get('license', 'BSD') or 'BSD').split()[0])
    requires_python = info['requires_python']
    requires_dist = info.get('requires_dist', [])

    for url_entry in metadata['urls']:
        if url_entry['packagetype'] == 'sdist':
            src_uri = url_entry['url'] + ' -> ${P}.gh.tar.gz'
            break
    if not src_uri:
        if repository:
            response = requests.get(f"{repository}/archive/refs/tags/v{version}.tar.gz")
            if response.ok:
                src_uri = f"{repository}/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            response = requests.get(f"{repository}/archive/refs/tags/{version}.tar.gz")
            if response.ok:
                src_uri = f"{repository}/archive/refs/tags/{version}.tar.gz -> ${{P}}.gh.tar.gz"
        if not src_uri:
            if package_name == 'aioapcaccess':
                src_uri = f"https://github.com/yuxincs/aioapcaccess/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'refoss-ha':
                src_uri = f"https://github.com/ashionky/refoss_ha/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'pyoppleio-legacy':
                src_uri = 'https://github.com/tinysnake/python-oppleio-legacy/archive/refs/heads/main.zip -> ${P}.gh.zip'
            elif package_name == 'home-assistant-chip-clusters':
                src_uri = 'https://github.com/project-chip/connectedhomeip/archive/refs/tags/v1.4.0.0.tar.gz -> ${P}.gh.tar.gz'
            elif package_name == 'russound':
                src_uri = 'https://github.com/laf/russound/archive/refs/heads/master.zip -> ${P}.gh.zip'
            elif package_name == 'sensirion-ble':
                src_uri = f"https://github.com/akx/sensirion-ble/archive/refs/tags/v{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'tank-utility':
                src_uri = f"https://github.com/krismolendyke/tank-utility/archive/refs/tags/{version}.tar.gz -> ${{P}}.gh.tar.gz"
            elif package_name == 'wyoming':
                src_uri = f"https://github.com/OHF-Voice/wyoming/archive/refs/tags/{version}.tar.gz -> ${{P}}.gh.tar.gz"
            else:
                raise ValueError("src_uri can not be empty")
    python_compat = parse_python_compat(requires_python)
    if python_compat:
        python_compat_str = "python3_{"
        python_compat_str += python_compat[0]
        python_compat_str += '..13}'
    else:
        python_compat_str = 'python3_13'

    dependencies = parse_requires_dist(requires_dist, required_extras)
    dependencies_str = '\n'.join(dependencies[0])
    ebuild_content = f"""# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( {python_compat_str} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="{description}"
HOMEPAGE="{homepage}"
SRC_URI="{src_uri}"

LICENSE="{license_}"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${{PYTHON_DEPS}}
{dependencies_str}
\"
"""
    return [ebuild_content, dependencies[1]]

def generate_manifest(package_name, package_version):
    """Generate Gentoo Manifest file."""
    subprocess.run(['pkgdev', 'manifest', f"dev-python/{package_name}/{package_name}-{package_version}.ebuild"])


def generate_metadata_xml(metadata):
    """Convert PyPI metadata to a Gentoo metadata.xml."""
    info = metadata['info']
    package_name = info['name']
    version = info['version']
    description = (info.get('summary', '') or '').replace("&", " and ")
    author = re.sub(r'<[^>]*>', '', info.get('author', '') or '').strip()
    match = re.search(r'<(.*?)>', info.get('author_email', '') or '')
    if match:
        author_email = match.group(1)
    else:
        match = re.search(r'<(.*?)>', info.get('author', '') or '')
        if match:
            author_email = author_email = match.group(1)
        else:
            author_email = info.get('author_email', '') or ''
    urls = info['project_urls']
    if urls:
        bugs = urls.get('Bug Tracker', '') or urls.get('Bug Reports', '')
        repository = re.sub(r'https?://github\.com/', '', urls.get('Repository', '') or urls.get('Source Code', ''))
        homepage = info.get('home_page', '') or info.get('project_url', '') or urls.get('Homepage', '')
    else:
        bugs=''
        repository=''
        homepage=''

    metadata_content = f"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pkgmetadata SYSTEM "https://www.gentoo.org/dtd/metadata.dtd">
<pkgmetadata>
\t<maintainer type="person">
\t\t<email>tomasz.m.wojna@gmail.com</email>
\t\t<name>Tomasz Wojna</name>
\t</maintainer>
\t<upstream>
\t\t<remote-id type="pypi">{package_name}</remote-id>
\t\t<remote-id type="github">{repository or 'unknown'}</remote-id>
\t\t<bugs-to>{bugs or 'unknown@example.com'}</bugs-to>
\t\t<maintainer status="unknown">
\t\t\t<email>{author_email}</email>
\t\t\t<name>{author}</name>
\t\t</maintainer>
\t</upstream>
\t<longdescription>
\t\t{description}
\t</longdescription>
</pkgmetadata>
"""
    return metadata_content

def save_metadata(package_name, metadata_content):
    """Save the metadata content to a file."""
    metadata_filename = f"dev-python/{package_name}/metadata.xml"
    with open(metadata_filename, 'w') as file:
        file.write(metadata_content)

def save_ebuild(package_name, version, ebuild_content):
    """Save the ebuild content to a file."""
    directory = f"dev-python/{package_name}"
    os.makedirs(directory, exist_ok=True)
    ebuild_filename = f"{directory}/{package_name}-{version}.ebuild"
    with open(ebuild_filename, 'w') as file:
        file.write(ebuild_content)

def get_package_versions(name, version, specifier):
    try:
        # Run the equery command
        result = subprocess.run(
            ['equery', 'list', '-p', '-o', '-F', '$cpv $repo $mask', f"{specifier}dev-python/{name}-{version}"],
            text=True,
            capture_output=True
        )

        if result.returncode != 0:
            # Exit code indicates an error
            return False
        else:
            # Capture the output
            output = result.stdout.strip().split('\n')
            if output[0].startswith("!!!"):
                return False
            for line in output:
                if line.endswith('-'):
                    continue
                parts = line.split()
                if parts[1] in ['gentoo', 'homeassistant-gentoo']:
                    result = subprocess.run(
                        ['equery', 'uses', f"{parts[0]}"],
                        text=True,
                        capture_output=True
                    )
                    if result.returncode != 0:
                        print(result.stdout)
                        return False
                    else:
                        if 'python_targets_python3_13' in result.stdout:
                            return True
            return False

    except subprocess.CalledProcessError as e:
        print(f"An error occurred while running the command: {e}")
        return None, None

def create_ebuild(package_name, package_version, package_specifier, required_extras):
    exists = get_package_versions(package_name, package_version, package_specifier)
    if exists:
        return
    metadata = fetch_pypi_metadata(package_name, package_version, package_specifier)
    version = remove_prerelease_identifiers(metadata['info']['version'], [0, 0, 0])
    e = convert_to_ebuild(metadata, required_extras)
    ebuild_content = e[0]
    dependencies = e[1]
    save_ebuild(package_name, version, ebuild_content)
    metadata_content = generate_metadata_xml(metadata)
    save_metadata(package_name, metadata_content)
    generate_manifest(package_name, version)
    for d in dependencies:
        if d:
            print(d)
            create_ebuild(d[0], d[1], d[2], d[3])

def main():
    create_ebuild('dvc', '3.60.0', '~', [])
    create_ebuild('cpplint', '2.0.2', '~', [])

if __name__ == "__main__":
    main()