# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="SSH Filesystem  Async SSHSFTP backend for fsspec"
HOMEPAGE="https://pypi.org/project/sshfs/"
SRC_URI="https://files.pythonhosted.org/packages/5a/e6/74b6119fdaf81cadc4b404f6abf681836209a9d22f7f0c1b08760460e5c5/sshfs-2025.2.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/fsspec-2021.8.1[${PYTHON_USEDEP}]
	>=dev-python/asyncssh-2.11.0[${PYTHON_USEDEP}]
	<dev-python/asyncssh-3.0.0[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
	dev-python/asyncssh[${PYTHON_USEDEP}]
"
