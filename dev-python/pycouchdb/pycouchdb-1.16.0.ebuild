# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Modern pure python CouchDB Client"
HOMEPAGE="https://github.com/histrio/py-couchdb"
SRC_URI="https://files.pythonhosted.org/packages/c1/b4/4f699a686a2ce14ab31cb17902693f2cf201ba51c3a6fb7aba210725c154/pycouchdb-1.16.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.28.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/chardet-5.2.0[${PYTHON_USEDEP}]
	<dev-python/chardet-6.0.0[${PYTHON_USEDEP}]
"
