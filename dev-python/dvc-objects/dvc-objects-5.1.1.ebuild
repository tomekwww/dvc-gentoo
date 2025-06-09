# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="dvc objects  filesystem and objectdb level abstractions to use in dvc and dvcdata"
HOMEPAGE="https://pypi.org/project/dvc-objects/"
SRC_URI="https://files.pythonhosted.org/packages/b5/36/68d3c92565d5fa7a6302d825965a1fedbc6e784d4d4ccaf6d536fae2124f/dvc_objects-5.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dvc_objects-5.1.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/fsspec-2024.2.0[${PYTHON_USEDEP}]
"
