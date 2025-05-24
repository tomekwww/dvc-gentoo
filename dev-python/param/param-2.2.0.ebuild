# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Make your Python code clearer and more reliable by declaring Parameters"
HOMEPAGE="https://pypi.org/project/param/"
SRC_URI="https://files.pythonhosted.org/packages/79/5b/244af19409227e81d1424b82e7f71c2b8b283b2911ec87c8a0d5a44357ac/param-2.2.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pandas[${PYTHON_USEDEP}]
	dev-python/panel[${PYTHON_USEDEP}]
"
