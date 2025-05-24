# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Highly concurrent networking library"
HOMEPAGE="https://pypi.org/project/eventlet/"
SRC_URI="https://files.pythonhosted.org/packages/30/d6/eeb879535400221c2ec3da72affd60d386709ed4d931680c44094a129610/eventlet-0.40.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/dnspython-1.15.0[${PYTHON_USEDEP}]
	>=dev-python/greenlet-1.0.0[${PYTHON_USEDEP}]
"
