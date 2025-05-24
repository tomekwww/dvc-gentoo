# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Google Drive API made easy Maintained fork of PyDrive"
HOMEPAGE="https://github.com/iterative/PyDrive2"
SRC_URI="https://files.pythonhosted.org/packages/3f/dc/92b0beba58f09441219bb6720bebdb895317632db4778cfe1d21532d27e5/pydrive2-1.21.3.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/google-api-python-client-1.12.5[${PYTHON_USEDEP}]
	>=dev-python/oauth2client-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.0.0[${PYTHON_USEDEP}]
	<dev-python/cryptography-44.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-19.1.0[${PYTHON_USEDEP}]
	<=dev-python/pyopenssl-24.2.1[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2021.7.0[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.14.0[${PYTHON_USEDEP}]
	>=dev-python/appdirs-1.4.3[${PYTHON_USEDEP}]
"
