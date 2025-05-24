# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Run and manage FastAPI apps from the command line with FastAPI CLI "
HOMEPAGE="https://pypi.org/project/fastapi-cli/"
SRC_URI="https://files.pythonhosted.org/packages/fe/73/82a5831fbbf8ed75905bacf5b2d9d3dfd6f04d6968b29fe6f72a5ae9ceb1/fastapi_cli-0.0.7.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/typer-0.12.3[${PYTHON_USEDEP}]
	>=dev-python/uvicorn-0.15.0[${PYTHON_USEDEP}]
	>=dev-python/rich-toolkit-0.11.1[${PYTHON_USEDEP}]
	>=dev-python/uvicorn-0.15.0[${PYTHON_USEDEP}]
"
