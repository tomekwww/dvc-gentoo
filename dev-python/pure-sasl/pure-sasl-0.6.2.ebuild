# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Pure Python client SASL implementation"
HOMEPAGE="http://github.com/thobbs/pure-sasl"
SRC_URI="https://files.pythonhosted.org/packages/83/b7/a0d688f86c869073cc28c0640899394a1cf68a6d87ee78a09565e9037da6/pure-sasl-0.6.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
