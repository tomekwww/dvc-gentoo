# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Highlevel interface to Kerberos"
HOMEPAGE="https://github.com/02strich/pykerberos"
SRC_URI="https://files.pythonhosted.org/packages/07/e9/ae44ea7d7605df9e5ca1ed745a2c5672dc838a8398101051dd5f255b130d/pykerberos-1.2.4.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
