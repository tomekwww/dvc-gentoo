# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Azure DocumentDB Python SDK"
HOMEPAGE="https://github.com/Azure/azure-documentdb-python"
SRC_URI="https://files.pythonhosted.org/packages/58/fa/c00ff2be2ef04a0eba20217f798193c2c7fe220aed0140e78c3473ecf42f/pydocumentdb-2.3.5.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
