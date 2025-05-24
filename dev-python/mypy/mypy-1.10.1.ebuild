# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Optional static typing for Python"
HOMEPAGE="https://www.mypy-lang.org/"
SRC_URI="https://files.pythonhosted.org/packages/c7/b9/81e4c6dbb1ec1e72503de3ff2c5fe4b7f224e04613b670f8b9004cd8a4dd/mypy-1.10.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/typing-extensions-4.1.0[${PYTHON_USEDEP}]
	>=dev-python/mypy-extensions-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/psutil-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools-50.0.0[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
"
