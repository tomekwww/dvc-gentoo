# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Dropbox implementation for fsspec module"
HOMEPAGE="https://pypi.org/project/dropboxdrivefs/"
SRC_URI="https://files.pythonhosted.org/packages/97/15/6d8f4c3033ad2bc364b8bb613c52c96653f2268f32ecff4f3ab5f1d7c19b/dropboxdrivefs-1.4.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/fsspec[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/dropbox[${PYTHON_USEDEP}]
"
