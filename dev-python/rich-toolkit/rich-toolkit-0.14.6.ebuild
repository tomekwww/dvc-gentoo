# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Rich toolkit for building commandline applications"
HOMEPAGE="https://pypi.org/project/rich-toolkit/"
SRC_URI="https://files.pythonhosted.org/packages/f6/31/b6d055f291a660a7bcaec4bcc9457b9fef8ecb6293e527b1eef1840aefd4/rich_toolkit-0.14.6.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-8.1.7[${PYTHON_USEDEP}]
	>=dev-python/rich-13.7.1[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.12.2[${PYTHON_USEDEP}]
"
