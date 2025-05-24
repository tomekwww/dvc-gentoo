# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Parallel PyData with Task Scheduling"
HOMEPAGE="https://pypi.org/project/dask/"
SRC_URI="https://files.pythonhosted.org/packages/3d/29/05feb8e2531c46d763547c66b7f5deb39b53d99b3be1b4ddddbd1cec6567/dask-2025.5.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-8.1.0[${PYTHON_USEDEP}]
	>=dev-python/cloudpickle-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2021.9.0[${PYTHON_USEDEP}]
	>=dev-python/packaging-20.0.0[${PYTHON_USEDEP}]
	>=dev-python/partd-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.3.1[${PYTHON_USEDEP}]
	>=dev-python/toolz-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.24.0[${PYTHON_USEDEP}]
	dev-python/dask[${PYTHON_USEDEP}]
	>=dev-python/pandas-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-14.0.1[${PYTHON_USEDEP}]
	~dev-python/distributed-2025.5.1[${PYTHON_USEDEP}]
	>=dev-python/bokeh-3.1.0[${PYTHON_USEDEP}]
	>=dev-python/jinja2-2.10.3[${PYTHON_USEDEP}]
	dev-python/dask[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-14.0.1[${PYTHON_USEDEP}]
	>=dev-python/lz4-4.3.2[${PYTHON_USEDEP}]
"
