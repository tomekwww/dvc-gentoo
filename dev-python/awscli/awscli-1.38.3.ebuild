# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Universal Command Line Environment for AWS"
HOMEPAGE="http://aws.amazon.com/cli/"
SRC_URI="https://files.pythonhosted.org/packages/a5/30/e209f869079afa668f81807fbe51c6d1b178539890781b94c2ed48031efa/awscli-1.38.3.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/botocore-1.37.3[${PYTHON_USEDEP}]
	<dev-python/docutils-0.17.0[${PYTHON_USEDEP}]
	>=dev-python/docutils-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/s3transfer-0.11.0[${PYTHON_USEDEP}]
	<dev-python/s3transfer-0.12.0[${PYTHON_USEDEP}]
	<dev-python/pyyaml-6.1.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/colorama-0.2.5[${PYTHON_USEDEP}]
	<dev-python/colorama-0.4.7[${PYTHON_USEDEP}]
	<dev-python/rsa-4.8.0[${PYTHON_USEDEP}]
	>=dev-python/rsa-3.1.2[${PYTHON_USEDEP}]
"
