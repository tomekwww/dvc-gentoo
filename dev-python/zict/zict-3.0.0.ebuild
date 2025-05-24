# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Mutable mapping tools"
HOMEPAGE="http://zict.readthedocs.io/en/latest/"
SRC_URI="https://files.pythonhosted.org/packages/d1/ac/3c494dd7ec5122cff8252c1a209b282c0867af029f805ae9befd73ae37eb/zict-3.0.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
