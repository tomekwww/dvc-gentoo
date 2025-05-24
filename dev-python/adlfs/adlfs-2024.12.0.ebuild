# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Access Azure Datalake Gen1 with fsspec and dask"
HOMEPAGE="https://pypi.org/project/adlfs/"
SRC_URI="https://files.pythonhosted.org/packages/76/82/e30891af574fb358449fb9436aac53569814452cb88b0cba4f488171b8dc/adlfs-2024.12.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/azure-core-1.28.0[${PYTHON_USEDEP}]
	<dev-python/azure-core-2.0.0[${PYTHON_USEDEP}]
	<dev-python/azure-datalake-store-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/azure-datalake-store-0.0.53[${PYTHON_USEDEP}]
	dev-python/azure-identity[${PYTHON_USEDEP}]
	>=dev-python/azure-storage-blob-12.17.0[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2023.12.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.0[${PYTHON_USEDEP}]
"
