# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Advanced Enumerations compatible with Pythons stdlib Enum NamedTuples and NamedConstants"
HOMEPAGE="https://github.com/ethanfurman/aenum"
SRC_URI="https://files.pythonhosted.org/packages/14/e8/2dd5a86a77028b027a3c9ff53ac2956d2c25053272f691542b29758dbf39/aenum-2.2.6.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
