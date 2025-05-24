# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Coroutinebased network library"
HOMEPAGE="http://www.gevent.org/"
SRC_URI="https://files.pythonhosted.org/packages/f1/58/267e8160aea00ab00acd2de97197eecfe307064a376fb5c892870a8a6159/gevent-25.5.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/greenlet-3.2.2[${PYTHON_USEDEP}]
	dev-python/zope-event[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.17.1[${PYTHON_USEDEP}]
"
