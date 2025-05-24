# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Portable mixedprecision BLASlike vector math library for x86 and ARM"
HOMEPAGE="https://github.com/ashvardanian/simsimd"
SRC_URI="https://files.pythonhosted.org/packages/da/1c/90e6ec0f0de20108fdd7d5665ac2916b1e8c893ce2f8d7481fd37eabbb97/simsimd-6.2.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
