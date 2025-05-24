# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="This package provides a DateTime data type as known from Zope Unless you need to communicate with Zope APIs youre probably better off using Pythons builtin datetime module"
HOMEPAGE="https://github.com/zopefoundation/DateTime"
SRC_URI="https://files.pythonhosted.org/packages/2f/66/e284b9978fede35185e5d18fb3ae855b8f573d8c90a56de5f6d03e8ef99e/DateTime-5.5.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/zope-interface[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"
