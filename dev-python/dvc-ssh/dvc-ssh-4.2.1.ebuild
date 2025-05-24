# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="ssh plugin for dvc"
HOMEPAGE="https://pypi.org/project/dvc-ssh/"
SRC_URI="https://files.pythonhosted.org/packages/2d/84/7cb9ee1eb82bd384f36eabc3afd18a659d9a669c16e3c78d947e6e0be7c1/dvc_ssh-4.2.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dvc[${PYTHON_USEDEP}]
	>=dev-python/sshfs-2023.4.1[${PYTHON_USEDEP}]
	>=dev-python/sshfs-2021.11.2[${PYTHON_USEDEP}]
"
