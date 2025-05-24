# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="azure plugin for dvc"
HOMEPAGE="https://pypi.org/project/dvc-azure/"
SRC_URI="https://files.pythonhosted.org/packages/b1/cd/5cf47247c82e7b8eba42890a23e6700f4baade329d24722140d290c32dc3/dvc-azure-3.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dvc[${PYTHON_USEDEP}]
	>=dev-python/adlfs-2023.12.0[${PYTHON_USEDEP}]
	>=dev-python/azure-identity-1.4.0[${PYTHON_USEDEP}]
	dev-python/knack[${PYTHON_USEDEP}]
"
