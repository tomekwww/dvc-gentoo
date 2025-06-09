# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Check C files configurably against Googles style guide"
HOMEPAGE="https://pypi.org/project/cpplint/"
SRC_URI="https://files.pythonhosted.org/packages/c5/83/47a9e7513ba4d943a9dac2f6752b444377c91880f4f4968799b4f42d89cc/cpplint-2.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/cpplint-2.0.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
