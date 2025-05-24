# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="A highlevel plotting API for the PyData ecosystem built on HoloViews"
HOMEPAGE="https://pypi.org/project/holoviews/"
SRC_URI="https://files.pythonhosted.org/packages/40/fb/72fd5d1a58c1c240857b754b45fd2f15b9a690031b1dfaee103fa2597ded/holoviews-1.20.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bokeh-3.1.0[${PYTHON_USEDEP}]
	dev-python/colorcet[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.21.0[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pandas-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/panel-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/param-2.0.0[${PYTHON_USEDEP}]
	<dev-python/param-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyviz-comms-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/matplotlib-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/plotly-4.0.0[${PYTHON_USEDEP}]
"
