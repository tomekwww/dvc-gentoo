# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="A JupyterLab extension for rendering HoloViz content"
HOMEPAGE="https://pypi.org/project/pyviz-comms/"
SRC_URI="https://files.pythonhosted.org/packages/61/1c/220c1dd64eafabb361900aba0808d84394c8a33a978c63c74a658dde108f/pyviz_comms-3.0.4.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/param[${PYTHON_USEDEP}]
	<dev-python/jupyterlab-5.0.0[${PYTHON_USEDEP}]
	dev-python/keyring[${PYTHON_USEDEP}]
	dev-python/rfc3986[${PYTHON_USEDEP}]
	>=dev-python/setuptools-40.8.0[${PYTHON_USEDEP}]
	dev-python/twine[${PYTHON_USEDEP}]
"
