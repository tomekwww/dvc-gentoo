# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="webhdfs plugin for dvc"
HOMEPAGE="http://dvc.org"
SRC_URI="https://files.pythonhosted.org/packages/36/f5/249f881b2e035d6c7362733986b5545fa8c88fed451972be5d0fedae5fab/dvc-webhdfs-3.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dvc[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2023.12.0[${PYTHON_USEDEP}]
	~dev-python/requests-kerberos-0.13.0[${PYTHON_USEDEP}]
"
