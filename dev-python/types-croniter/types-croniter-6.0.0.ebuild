# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for croniter"
HOMEPAGE="https://pypi.org/project/types-croniter/"
SRC_URI="https://files.pythonhosted.org/packages/92/5a/837dd0f759b8df7c5ce28692f1b6d752035e5389098dd364784283b30a19/types_croniter-6.0.0.20250411.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
