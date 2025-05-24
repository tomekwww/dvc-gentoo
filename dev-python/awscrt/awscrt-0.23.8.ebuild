# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="A common runtime for AWS Python projects"
HOMEPAGE="https://github.com/awslabs/aws-crt-python"
SRC_URI="https://files.pythonhosted.org/packages/fe/50/0e3fd91488e5f0a18bc829869fc081cf4d9cd86642d9ee21b32907b02e80/awscrt-0.23.8.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
