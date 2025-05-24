# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Interact with a server using the SMB 23 Protocol"
HOMEPAGE="https://pypi.org/project/smbprotocol/"
SRC_URI="https://files.pythonhosted.org/packages/c7/b4/68d75ae0c2f925976c7a58dd9bd26741378c79c6d56d57c72fabcbe595c4/smbprotocol-1.15.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-2.0.0[${PYTHON_USEDEP}]
	dev-python/pyspnego[${PYTHON_USEDEP}]
	dev-python/pyspnego[${PYTHON_USEDEP}]
"
