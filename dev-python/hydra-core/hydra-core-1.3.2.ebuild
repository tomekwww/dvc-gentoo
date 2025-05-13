# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A framework for elegantly configuring complex applications"
HOMEPAGE="https://github.com/facebookresearch/hydra"
SRC_URI="https://files.pythonhosted.org/packages/6d/8e/07e42bc434a847154083b315779b0a81d567154504624e181caf2c71cd98/hydra-core-1.3.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/omegaconf-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/omegaconf-2.2.0[${PYTHON_USEDEP}]
	<dev-python/antlr4-python3-runtime-4.10.0[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
"
