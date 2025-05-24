# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for colorama"
HOMEPAGE="https://github.com/python/typeshed"
SRC_URI="https://files.pythonhosted.org/packages/59/73/0fb0b9fe4964b45b2a06ed41b60c352752626db46aa0fb70a49a9e283a75/types-colorama-0.4.15.20240311.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
