# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="SoftLayer Message Queue Client"
HOMEPAGE="http://sldn.softlayer.com/reference/messagequeueapi"
SRC_URI="https://files.pythonhosted.org/packages/c6/6e/d134cd887c1d46ebef319ab68678faed7be47914c1fd8baa5cc9ae17a4fd/softlayer_messaging-1.0.3.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
