# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="WebDAV client library with an fsspecbased filesystem and a CLI"
HOMEPAGE="https://pypi.org/project/webdav4/"
SRC_URI="https://files.pythonhosted.org/packages/08/3d/d604f9d5195689e578f124f196a5d7e80f3106c8404f5c19b2181691de19/webdav4-0.10.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.20.0[${PYTHON_USEDEP}]
	<dev-python/httpx-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.1[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2021.7.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.20.0[${PYTHON_USEDEP}]
	<dev-python/httpx-1.0.0[${PYTHON_USEDEP}]
	~dev-python/mypy-1.10.1[${PYTHON_USEDEP}]
	dev-python/pre-commit[${PYTHON_USEDEP}]
	dev-python/types-colorama[${PYTHON_USEDEP}]
	dev-python/types-pkg-resources[${PYTHON_USEDEP}]
	dev-python/types-python-dateutil[${PYTHON_USEDEP}]
"
