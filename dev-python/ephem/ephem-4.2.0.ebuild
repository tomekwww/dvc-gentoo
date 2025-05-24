# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Compute positions of the planets and stars"
HOMEPAGE="http://rhodesmill.org/pyephem/"
SRC_URI="https://files.pythonhosted.org/packages/59/13/0d2c9525b1ba465e09af3f6585b3ac8fb0d66241b52f9f4f10118e323a9d/ephem-4.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
