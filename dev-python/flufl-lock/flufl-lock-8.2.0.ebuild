# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="NFSsafe file locking with timeouts for POSIX and Windows"
HOMEPAGE="https://pypi.org/project/flufl.lock/"
SRC_URI="https://files.pythonhosted.org/packages/90/78/80f98f67deb8ba9b67e00a91ceb1ded5a7b8eb2b7801b89625d3396fc9d4/flufl_lock-8.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/flufl_lock-8.2.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/atpublic[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
"
