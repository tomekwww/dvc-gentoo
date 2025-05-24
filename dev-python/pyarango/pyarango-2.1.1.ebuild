# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="An easy to use python driver for ArangoDB with builtin validation"
HOMEPAGE="https://github.com/tariqdaouda/pyArango"
SRC_URI="https://files.pythonhosted.org/packages/2c/2c/90e656f781b01e9bb1cd240f38412e6f08379dce256757f523d5044577d3/pyArango-2.1.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.7.0[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/datetime[${PYTHON_USEDEP}]
"
