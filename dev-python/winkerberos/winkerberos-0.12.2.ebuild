# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="High level interface to SSPI for Kerberos client auth"
HOMEPAGE="https://pypi.org/project/winkerberos/"
SRC_URI="https://files.pythonhosted.org/packages/2d/75/86d470935167eb1c40d53498993e14cc021d9611a539d61c9b4202c291ab/winkerberos-0.12.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
