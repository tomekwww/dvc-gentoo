# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="s3 plugin for dvc"
HOMEPAGE="https://pypi.org/project/dvc-s3/"
SRC_URI="https://files.pythonhosted.org/packages/fa/cf/14e5f014f77381a58617c1ee3ae98f8fc15768e6a89ff0efac3ff7fc0016/dvc_s3-3.2.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dvc[${PYTHON_USEDEP}]
	>=dev-python/s3fs-2023.6.0[${PYTHON_USEDEP}]
	>=dev-python/aiobotocore-2.5.0[${PYTHON_USEDEP}]
	>=dev-python/flatten-dict-0.4.1[${PYTHON_USEDEP}]
	<dev-python/flatten-dict-1.0.0[${PYTHON_USEDEP}]
"
