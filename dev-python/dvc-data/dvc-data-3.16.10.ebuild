# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="DVCs data management subsystem"
HOMEPAGE="https://pypi.org/project/dvc-data/"
SRC_URI="https://files.pythonhosted.org/packages/da/64/459483623d867d2161e3aacecc5f9f172e8a57438cfcfc029e00be5fb594/dvc_data-3.16.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dvc_data-3.16.10"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/attrs-21.3.0[${PYTHON_USEDEP}]
	>=dev-python/dictdiffer-0.8.1[${PYTHON_USEDEP}]
	>=dev-python/diskcache-5.2.1[${PYTHON_USEDEP}]
	>=dev-python/dvc-objects-4.0.1[${PYTHON_USEDEP}]
	<dev-python/dvc-objects-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2024.2.0[${PYTHON_USEDEP}]
	>=dev-python/pygtrie-2.3.2[${PYTHON_USEDEP}]
	<dev-python/sqltrie-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/sqltrie-0.11.0[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.63.1[${PYTHON_USEDEP}]
	<dev-python/tqdm-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.0.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.0.0[${PYTHON_USEDEP}]
"
