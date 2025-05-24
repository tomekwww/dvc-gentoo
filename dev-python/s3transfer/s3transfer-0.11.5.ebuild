# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="An Amazon S3 Transfer Manager"
HOMEPAGE="https://github.com/boto/s3transfer"
SRC_URI="https://files.pythonhosted.org/packages/c4/2b/5c9562795c2eb2b5f63536961754760c25bf0f34af93d36aa28dea2fb303/s3transfer-0.11.5.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/botocore-1.37.4[${PYTHON_USEDEP}]
	<dev-python/botocore-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/botocore-1.37.4[${PYTHON_USEDEP}]
	<dev-python/botocore-2.0.0[${PYTHON_USEDEP}]
"
