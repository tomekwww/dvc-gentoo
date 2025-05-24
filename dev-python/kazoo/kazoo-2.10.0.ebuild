# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Higher Level Zookeeper Client"
HOMEPAGE="https://kazoo.readthedocs.io"
SRC_URI="https://files.pythonhosted.org/packages/ff/01/75d0baf017c89de8909e4429a1865a17e45d9b787ce8084a2c55c95a79c9/kazoo-2.10.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/eventlet-0.17.1[${PYTHON_USEDEP}]
	>=dev-python/gevent-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/pure-sasl-0.5.1[${PYTHON_USEDEP}]
	>=dev-python/mypy-0.991.0[${PYTHON_USEDEP}]
"
