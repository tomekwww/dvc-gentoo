# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Wraps the portalocker recipe for easy usage"
HOMEPAGE="https://pypi.org/project/portalocker/"
SRC_URI="https://files.pythonhosted.org/packages/ac/91/8bfe23e1f7f630f2061ef38b5225d9fda9068d6a30fcbc187951e678e630/portalocker-3.1.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/redis[${PYTHON_USEDEP}]
"
