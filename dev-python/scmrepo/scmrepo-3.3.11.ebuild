# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="scmrepo"
HOMEPAGE="https://pypi.org/project/scmrepo/"
SRC_URI="https://files.pythonhosted.org/packages/25/c9/a05b8ce93ce8470e44f430f664396396b6b183cbe899407e8cd286a29165/scmrepo-3.3.11.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/gitpython-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/dulwich-0.22.1[${PYTHON_USEDEP}]
	>=dev-python/pygit2-1.14.0[${PYTHON_USEDEP}]
	>=dev-python/pygtrie-2.3.2[${PYTHON_USEDEP}]
	>=dev-python/fsspec-2024.2.0[${PYTHON_USEDEP}]
	>=dev-python/pathspec-0.9.0[${PYTHON_USEDEP}]
	<dev-python/asyncssh-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/asyncssh-2.13.1[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.14.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-retry-2.5.0[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
"
