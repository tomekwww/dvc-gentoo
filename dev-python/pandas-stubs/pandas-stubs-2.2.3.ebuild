# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Type annotations for pandas"
HOMEPAGE="https://pandas.pydata.org"
SRC_URI="https://files.pythonhosted.org/packages/2e/5a/261f5c67a73e46df2d5984fe7129d66a3ed4864fd7aa9d8721abb3fc802e/pandas_stubs-2.2.3.250308.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/numpy-1.23.5[${PYTHON_USEDEP}]
	>=dev-python/types-pytz-2022.1.1[${PYTHON_USEDEP}]
"
