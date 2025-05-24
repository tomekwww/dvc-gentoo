# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Convenient Filesystem interface over S3"
HOMEPAGE="http://github.com/fsspec/s3fs/"
SRC_URI="https://files.pythonhosted.org/packages/7f/6f/d0ee452580d7d0643a1a776b95dfef2144023f3fc077038e07d651995d34/s3fs-2025.5.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiobotocore-2.5.4[${PYTHON_USEDEP}]
	<dev-python/aiobotocore-3.0.0[${PYTHON_USEDEP}]
	~dev-python/fsspec-2025.5.1[${PYTHON_USEDEP}]
	>=dev-python/aiobotocore-2.5.4[${PYTHON_USEDEP}]
	<dev-python/aiobotocore-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiobotocore-2.5.4[${PYTHON_USEDEP}]
	<dev-python/aiobotocore-3.0.0[${PYTHON_USEDEP}]
"
