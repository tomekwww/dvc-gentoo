# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Extensible task queue used in DVC"
HOMEPAGE="https://pypi.org/project/dvc-task/"
SRC_URI="https://files.pythonhosted.org/packages/19/ef/da712c4d9c7d6cacac27d7b2779e6a97c3381ef2c963c33719d39113b6a3/dvc_task-0.40.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dvc_task-0.40.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/celery-5.3.0[${PYTHON_USEDEP}]
	<dev-python/celery-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/kombu-5.3.0[${PYTHON_USEDEP}]
	<dev-python/kombu-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/shortuuid-1.0.8[${PYTHON_USEDEP}]
"
