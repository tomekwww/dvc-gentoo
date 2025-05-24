# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for Markdown"
HOMEPAGE="https://pypi.org/project/types-Markdown/"
SRC_URI="https://files.pythonhosted.org/packages/0d/d3/5fa81c99f0d169ade1f96822c5b327821c0357663e3b6d8782c870457a2d/types_markdown-3.8.0.20250415.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
