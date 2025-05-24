# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for requests"
HOMEPAGE="https://pypi.org/project/types-requests/"
SRC_URI="https://files.pythonhosted.org/packages/06/c1/cdc4f9b8cfd9130fbe6276db574f114541f4231fcc6fb29648289e6e3390/types_requests-2.32.0.20250515.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/urllib3-2.0.0[${PYTHON_USEDEP}]
"
