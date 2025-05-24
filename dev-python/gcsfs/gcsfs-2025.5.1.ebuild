# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Convenient Filesystem interface over GCS"
HOMEPAGE="https://github.com/fsspec/gcsfs"
SRC_URI="https://files.pythonhosted.org/packages/d8/4a/47ad326cc74ccfd97e125c0087a36d516ed74c61f53e458067737378d0f2/gcsfs-2025.5.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/decorator-4.1.2[${PYTHON_USEDEP}]
	~dev-python/fsspec-2025.5.1[${PYTHON_USEDEP}]
	>=dev-python/google-auth-1.2.0[${PYTHON_USEDEP}]
	dev-python/google-auth-oauthlib[${PYTHON_USEDEP}]
	dev-python/google-cloud-storage[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/fusepy[${PYTHON_USEDEP}]
	dev-python/crcmod[${PYTHON_USEDEP}]
"
