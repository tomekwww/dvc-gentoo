# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Google Cloud Storage API client library"
HOMEPAGE="https://github.com/googleapis/python-storage"
SRC_URI="https://files.pythonhosted.org/packages/f3/08/52143124415a889bbab60a8ecede1e31ea0e8d992ca078317886f26dc3be/google_cloud_storage-3.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/google-auth-2.26.1[${PYTHON_USEDEP}]
	<dev-python/google-auth-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-api-core-2.15.0[${PYTHON_USEDEP}]
	<dev-python/google-api-core-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-cloud-core-2.4.2[${PYTHON_USEDEP}]
	<dev-python/google-cloud-core-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-resumable-media-2.7.2[${PYTHON_USEDEP}]
	>=dev-python/requests-2.18.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-crc32c-1.0.0[${PYTHON_USEDEP}]
	<dev-python/google-crc32c-2.0.0[${PYTHON_USEDEP}]
	<dev-python/protobuf-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/opentelemetry-api-1.1.0[${PYTHON_USEDEP}]
"
