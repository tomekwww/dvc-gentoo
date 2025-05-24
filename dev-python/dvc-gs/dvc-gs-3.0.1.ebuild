# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="gs plugin for dvc"
HOMEPAGE="http://dvc.org"
SRC_URI="https://files.pythonhosted.org/packages/71/58/7714c93a472f04613fee5714d847d1af7b1fabcca93784046cc07eb7b8d8/dvc-gs-3.0.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dvc[${PYTHON_USEDEP}]
	>=dev-python/gcsfs-2022.11.0[${PYTHON_USEDEP}]
"
