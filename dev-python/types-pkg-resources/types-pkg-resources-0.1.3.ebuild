# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for pkgresources"
HOMEPAGE="https://github.com/python/typeshed"
SRC_URI="https://files.pythonhosted.org/packages/a4/5c/5e04590a4b9749a33a6b8b93784270a65f8ebdec55a0b7742bb30e2075bb/types-pkg_resources-0.1.3.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
