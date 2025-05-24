# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Source of XYZ tiles providers"
HOMEPAGE="https://github.com/geopandas/xyzservices"
SRC_URI="https://files.pythonhosted.org/packages/00/af/c0f7f97bb320d14c089476f487b81f733238cc5603e0914f2e409f49d589/xyzservices-2025.4.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
