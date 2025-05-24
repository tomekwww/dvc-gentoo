# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Stone is an interface description language IDL for APIs"
HOMEPAGE="https://github.com/dropbox/stone"
SRC_URI="https://files.pythonhosted.org/packages/99/6f/ef25bbc1aefeb9c905d527f1d3cd3f41f22f40566d33001b8bb14ae0cdaf/stone-3.3.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/ply-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.12.0[${PYTHON_USEDEP}]
"
