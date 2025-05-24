# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for bleach"
HOMEPAGE="https://pypi.org/project/types-bleach/"
SRC_URI="https://files.pythonhosted.org/packages/35/e0/0b8b54767b843a4d5ba3fd9335f13959066662984f564d339f09fb9a65ca/types_bleach-6.2.0.20250514.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/types-html5lib[${PYTHON_USEDEP}]
"
