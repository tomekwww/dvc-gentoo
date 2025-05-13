# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Distributed Task Queue"
HOMEPAGE="https://docs.celeryq.dev/"
SRC_URI="https://files.pythonhosted.org/packages/bb/7d/6c289f407d219ba36d8b384b42489ebdd0c84ce9c413875a8aae0c85f35b/celery-5.5.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/billiard-4.2.1[${PYTHON_USEDEP}]
	<dev-python/billiard-5.0.0[${PYTHON_USEDEP}]
	<dev-python/kombu-5.6.0[${PYTHON_USEDEP}]
	>=dev-python/kombu-5.5.2[${PYTHON_USEDEP}]
	>=dev-python/vine-5.1.0[${PYTHON_USEDEP}]
	<dev-python/vine-6.0.0[${PYTHON_USEDEP}]
	<dev-python/click-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/click-8.1.2[${PYTHON_USEDEP}]
	>=dev-python/click-didyoumean-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/click-repl-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/click-plugins-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
"
