# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Git for data scientists  manage your code and data together"
HOMEPAGE="https://pypi.org/project/dvc/"
SRC_URI="https://files.pythonhosted.org/packages/f3/9d/c7c143684a87119213dcbe1a7da36d5e5d701467a2da3a9d0ae1d428e3b9/dvc-3.59.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/attrs-22.2.0[${PYTHON_USEDEP}]
	dev-python/celery[${PYTHON_USEDEP}]
	>=dev-python/colorama-0.3.9[${PYTHON_USEDEP}]
	>=dev-python/configobj-5.0.9[${PYTHON_USEDEP}]
	>=dev-python/distro-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/dpath-2.1.0[${PYTHON_USEDEP}]
	<dev-python/dpath-3.0.0[${PYTHON_USEDEP}]
	dev-python/dulwich[${PYTHON_USEDEP}]
	<dev-python/dvc-data-3.17.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-data-3.16.2[${PYTHON_USEDEP}]
	>=dev-python/dvc-http-2.29.0[${PYTHON_USEDEP}]
	dev-python/dvc-objects[${PYTHON_USEDEP}]
	>=dev-python/dvc-render-1.0.1[${PYTHON_USEDEP}]
	<dev-python/dvc-render-2.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-studio-client-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-studio-client-0.21.0[${PYTHON_USEDEP}]
	<dev-python/dvc-task-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-task-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/flatten-dict-0.4.1[${PYTHON_USEDEP}]
	<dev-python/flatten-dict-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/flufl-lock-8.1.0[${PYTHON_USEDEP}]
	<dev-python/flufl-lock-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2024.2.0[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.14.0[${PYTHON_USEDEP}]
	>=dev-python/grandalf-0.7.0[${PYTHON_USEDEP}]
	<dev-python/grandalf-1.0.0[${PYTHON_USEDEP}]
	<dev-python/gto-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/gto-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/hydra-core-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/iterative-telemetry-0.0.7[${PYTHON_USEDEP}]
	dev-python/kombu[${PYTHON_USEDEP}]
	>=dev-python/networkx-2.5.0[${PYTHON_USEDEP}]
	dev-python/omegaconf[${PYTHON_USEDEP}]
	>=dev-python/packaging-19.0.0[${PYTHON_USEDEP}]
	>=dev-python/pathspec-0.10.3[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-3.1.1[${PYTHON_USEDEP}]
	>=dev-python/psutil-5.8.0[${PYTHON_USEDEP}]
	>=dev-python/pydot-1.2.4[${PYTHON_USEDEP}]
	>=dev-python/pygtrie-2.3.2[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-2.4.7[${PYTHON_USEDEP}]
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
	>=dev-python/rich-12.0.0[${PYTHON_USEDEP}]
	>=dev-python/ruamel-yaml-0.17.11[${PYTHON_USEDEP}]
	<dev-python/scmrepo-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/scmrepo-3.3.8[${PYTHON_USEDEP}]
	>=dev-python/shortuuid-0.5.0[${PYTHON_USEDEP}]
	>=dev-python/shtab-1.3.4[${PYTHON_USEDEP}]
	<dev-python/shtab-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/tabulate-0.8.7[${PYTHON_USEDEP}]
	>=dev-python/tomlkit-0.11.1[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.63.1[${PYTHON_USEDEP}]
	<dev-python/tqdm-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.11.7[${PYTHON_USEDEP}]
	>=dev-python/zc-lockfile-1.2.1[${PYTHON_USEDEP}]
	<dev-python/dvc-azure-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-azure-3.1.0[${PYTHON_USEDEP}]
	<dev-python/dvc-gdrive-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-gdrive-3.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-gs-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-gs-3.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-hdfs-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-hdfs-3.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-oss-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-oss-3.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-s3-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-s3-3.2.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-ssh-4.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-ssh-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-ssh-4.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-ssh-5.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-webdav-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-webdav-3.0.0[${PYTHON_USEDEP}]
	<dev-python/dvc-webhdfs-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-webhdfs-3.1.0[${PYTHON_USEDEP}]
	<dev-python/dvc-webhdfs-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/dvc-webhdfs-3.1.0[${PYTHON_USEDEP}]
"
