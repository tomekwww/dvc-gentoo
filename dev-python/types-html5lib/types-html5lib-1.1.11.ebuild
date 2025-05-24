# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for html5lib"
HOMEPAGE="https://pypi.org/project/types-html5lib/"
SRC_URI="https://files.pythonhosted.org/packages/d0/ed/9f092ff479e2b5598941855f314a22953bb04b5fb38bcba3f880feb833ba/types_html5lib-1.1.11.20250516.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
