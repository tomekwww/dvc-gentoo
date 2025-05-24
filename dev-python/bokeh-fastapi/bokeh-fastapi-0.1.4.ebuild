# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Compatibility layer between Bokeh and FastAPI"
HOMEPAGE="https://pypi.org/project/bokeh-fastapi/"
SRC_URI="https://files.pythonhosted.org/packages/ba/90/f26207bb3e27fb1b8ae5e9a0e0e09dae7b897517235d66d1e91aec3affc4/bokeh_fastapi-0.1.4.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bokeh-2.3.3[${PYTHON_USEDEP}]
	>=dev-python/fastapi-0.68.0[${PYTHON_USEDEP}]
	dev-python/starlette[${PYTHON_USEDEP}]
	>=dev-python/websockets-10.4.0[${PYTHON_USEDEP}]
"
