# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Python client for Elasticsearch"
HOMEPAGE="https://pypi.org/project/elasticsearch/"
SRC_URI="https://files.pythonhosted.org/packages/5b/3d/f563e58f45d23565c0d0316a565638ce312f536b882a3281b8047fb4a58f/elasticsearch-8.17.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/elastic-transport-8.15.1[${PYTHON_USEDEP}]
	<dev-python/elastic-transport-9.0.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-1.0.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/simsimd-3.0.0[${PYTHON_USEDEP}]
"
