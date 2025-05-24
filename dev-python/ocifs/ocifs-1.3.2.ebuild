# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Convenient filesystem interface over Oracle Clouds Object Storage"
HOMEPAGE="https://pypi.org/project/ocifs/"
SRC_URI="https://files.pythonhosted.org/packages/1c/3e/87cd3abb40114bf46cb7de4d75fc987851fae09f4568b08769e0708f3933/ocifs-1.3.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/fsspec-0.8.7[${PYTHON_USEDEP}]
	>=dev-python/oci-2.43.1[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
