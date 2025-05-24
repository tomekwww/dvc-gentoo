# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Interactive plots and applications in the browser from Python"
HOMEPAGE="https://pypi.org/project/bokeh/"
SRC_URI="https://files.pythonhosted.org/packages/75/18/12d0d6024177ad18ba65deffc363046d0cbafe116f8b964a9efa85d2800f/bokeh-3.7.3.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/jinja2-2.9.0[${PYTHON_USEDEP}]
	>=dev-python/contourpy-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/narwhals-1.13.0[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.16.0[${PYTHON_USEDEP}]
	>=dev-python/packaging-16.8.0[${PYTHON_USEDEP}]
	>=dev-python/pandas-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/pillow-7.1.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/tornado-6.2.0[${PYTHON_USEDEP}]
	>=dev-python/xyzservices-2021.9.1[${PYTHON_USEDEP}]
"
