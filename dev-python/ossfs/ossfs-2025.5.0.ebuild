# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="fsspec filesystem for OSS"
HOMEPAGE="https://pypi.org/project/ossfs/"
SRC_URI="https://files.pythonhosted.org/packages/b1/8a/d0ca844e613d0b8d4b80f8098528a599f2fbf05c3853a75d27d3e645928e/ossfs-2025.5.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiooss2-0.2.11[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2023.9.2[${PYTHON_USEDEP}]
	~dev-python/oss2-2.18.4[${PYTHON_USEDEP}]
"
