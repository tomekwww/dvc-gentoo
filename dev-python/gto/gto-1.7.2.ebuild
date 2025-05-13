# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Version and deploy your models following GitOps principles"
HOMEPAGE="https://pypi.org/project/gto/"
SRC_URI="https://files.pythonhosted.org/packages/d6/ea/ea6267da29ac54a53944106e46337e3e8e43eaa24bb6b7cf5da18043758c/gto-1.7.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/funcy[${PYTHON_USEDEP}]
	<dev-python/pydantic-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.9.0[${PYTHON_USEDEP}]
	<dev-python/rich-11.0.0[${PYTHON_USEDEP}]
	dev-python/ruamel-yaml[${PYTHON_USEDEP}]
	>=dev-python/scmrepo-3.0.0[${PYTHON_USEDEP}]
	<dev-python/scmrepo-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/semver-2.13.0[${PYTHON_USEDEP}]
	>=dev-python/tabulate-0.8.10[${PYTHON_USEDEP}]
	>=dev-python/typer-0.4.1[${PYTHON_USEDEP}]
"
