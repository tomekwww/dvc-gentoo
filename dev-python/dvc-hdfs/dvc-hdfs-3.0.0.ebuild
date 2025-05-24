# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="hdfs plugin for dvc"
HOMEPAGE="http://dvc.org"
SRC_URI="https://files.pythonhosted.org/packages/ea/b5/42a2a3b3897f6e7c0b77c1408ed27e472ffdf61c5a1fec91d396177da275/dvc-hdfs-3.0.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dvc[${PYTHON_USEDEP}]
	dev-python/fsspec[${PYTHON_USEDEP}]
"
