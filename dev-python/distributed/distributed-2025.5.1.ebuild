# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Distributed scheduler for Dask"
HOMEPAGE="https://pypi.org/project/distributed/"
SRC_URI="https://files.pythonhosted.org/packages/29/ba/45950f405d023a520a4d10753ef40209a465b86c8fdc131236ec29bcb15c/distributed-2025.5.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/cloudpickle-3.0.0[${PYTHON_USEDEP}]
	~dev-python/dask-2025.5.1[${PYTHON_USEDEP}]
	>=dev-python/jinja2-2.10.3[${PYTHON_USEDEP}]
	>=dev-python/locket-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/msgpack-1.0.2[${PYTHON_USEDEP}]
	>=dev-python/packaging-20.0.0[${PYTHON_USEDEP}]
	>=dev-python/psutil-5.8.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.4.1[${PYTHON_USEDEP}]
	>=dev-python/sortedcontainers-2.0.5[${PYTHON_USEDEP}]
	>=dev-python/tblib-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/toolz-0.11.2[${PYTHON_USEDEP}]
	>=dev-python/tornado-6.2.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.5[${PYTHON_USEDEP}]
	>=dev-python/zict-3.0.0[${PYTHON_USEDEP}]
"
