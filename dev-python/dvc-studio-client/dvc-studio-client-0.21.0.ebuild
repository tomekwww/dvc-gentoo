# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Small library to post data from DVCDVCLive to Iterative Studio"
HOMEPAGE="https://pypi.org/project/dvc-studio-client/"
SRC_URI="https://files.pythonhosted.org/packages/87/08/13cf5bb8bf0855d47325467a5948848bcea51780e2212349034f5e4701e6/dvc_studio_client-0.21.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dvc_studio_client-0.21.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dulwich[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/voluptuous[${PYTHON_USEDEP}]
"
