# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Collection of perceptually uniform colormaps"
HOMEPAGE="https://pypi.org/project/colorcet/"
SRC_URI="https://files.pythonhosted.org/packages/5f/c3/ae78e10b7139d6b7ce080d2e81d822715763336aa4229720f49cb3b3e15b/colorcet-3.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/holoviews[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/bokeh[${PYTHON_USEDEP}]
"
