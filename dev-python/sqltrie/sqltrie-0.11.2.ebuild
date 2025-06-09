# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SQLbased prefix tree inspired by pygtrie and pythondiskcache"
HOMEPAGE="https://pypi.org/project/sqltrie/"
SRC_URI="https://files.pythonhosted.org/packages/8a/e6/f3832264bcd98b9e71c93c579ab6b39eb1db659cab305e59f8f7c1adc777/sqltrie-0.11.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sqltrie-0.11.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/attrs-22.2.0[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
	dev-python/pygtrie[${PYTHON_USEDEP}]
"
