# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="The powerful data exploration  web app framework for Python"
HOMEPAGE="https://pypi.org/project/panel/"
SRC_URI="https://files.pythonhosted.org/packages/3a/44/5894f0faff8a6e7974cab65b88a3999f09bd77088810b2b306c0e0afe6c8/panel-1.7.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/bleach[${PYTHON_USEDEP}]
	>=dev-python/bokeh-3.5.0[${PYTHON_USEDEP}]
	<dev-python/bokeh-3.8.0[${PYTHON_USEDEP}]
	dev-python/linkify-it-py[${PYTHON_USEDEP}]
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/markdown-it-py[${PYTHON_USEDEP}]
	dev-python/mdit-py-plugins[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pandas-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/param-2.1.0[${PYTHON_USEDEP}]
	<dev-python/param-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyviz-comms-2.0.0[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	>=dev-python/bokeh-fastapi-0.1.1[${PYTHON_USEDEP}]
	dev-python/fastapi[${PYTHON_USEDEP}]
	dev-python/mypy[${PYTHON_USEDEP}]
	dev-python/pandas-stubs[${PYTHON_USEDEP}]
	dev-python/types-bleach[${PYTHON_USEDEP}]
	dev-python/types-croniter[${PYTHON_USEDEP}]
	dev-python/types-markdown[${PYTHON_USEDEP}]
	dev-python/types-psutil[${PYTHON_USEDEP}]
	dev-python/types-requests[${PYTHON_USEDEP}]
	dev-python/types-tqdm[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	>=dev-python/holoviews-1.18.0[${PYTHON_USEDEP}]
	dev-python/jupyterlab[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/plotly[${PYTHON_USEDEP}]
"
