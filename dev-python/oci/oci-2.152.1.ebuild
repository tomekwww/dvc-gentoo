# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Oracle Cloud Infrastructure Python SDK"
HOMEPAGE="https://docs.oracle.com/en-us/iaas/tools/python/latest/index.html"
SRC_URI="https://files.pythonhosted.org/packages/8e/94/38474b246701764be0424ff4ed62a5fe7c8d5c27c63ebf6461637b7d1cd2/oci-2.152.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/certifi[${PYTHON_USEDEP}]
	>=dev-python/cryptography-3.2.1[${PYTHON_USEDEP}]
	<dev-python/cryptography-46.0.0[${PYTHON_USEDEP}]
	<dev-python/pyopenssl-25.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-17.5.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.5.3[${PYTHON_USEDEP}]
	<dev-python/python-dateutil-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2016.10.0[${PYTHON_USEDEP}]
	>=dev-python/circuitbreaker-1.3.1[${PYTHON_USEDEP}]
	<dev-python/circuitbreaker-3.0.0[${PYTHON_USEDEP}]
"
