# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="A Kerberos authentication handler for pythonrequests"
HOMEPAGE="https://github.com/requests/requests-kerberos"
SRC_URI="https://files.pythonhosted.org/packages/eb/dd/028f28d6d810ffbf47899d575f0de315f52f7cc3c28fe542bbb045411a4e/requests-kerberos-0.13.0.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-1.3.0[${PYTHON_USEDEP}]
	dev-python/pyspnego[${PYTHON_USEDEP}]
"
