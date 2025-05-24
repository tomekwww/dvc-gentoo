# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for tqdm"
HOMEPAGE="https://pypi.org/project/types-tqdm/"
SRC_URI="https://files.pythonhosted.org/packages/bd/07/eb40de2dc2ff2d1a53180330981b1bdb42313ab4e1b11195d8d64c878b3c/types_tqdm-4.67.0.20250516.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/types-requests[${PYTHON_USEDEP}]
"
