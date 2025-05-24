# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="GremlinPython for Apache TinkerPop"
HOMEPAGE="http://tinkerpop.apache.org"
SRC_URI="https://files.pythonhosted.org/packages/91/bb/2ba8e1621fa76bdbb25c3a5d1ee8b04f5b17500020c90c97cb82cb15c98c/gremlinpython-3.4.6.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aenum-1.4.5[${PYTHON_USEDEP}]
	<dev-python/aenum-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/tornado-4.4.1[${PYTHON_USEDEP}]
	<dev-python/tornado-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.10.0[${PYTHON_USEDEP}]
	<dev-python/six-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/isodate-0.6.0[${PYTHON_USEDEP}]
	<dev-python/isodate-1.0.0[${PYTHON_USEDEP}]
"
