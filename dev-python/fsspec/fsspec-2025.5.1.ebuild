# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Filesystem specification"
HOMEPAGE="https://pypi.org/project/fsspec/"
SRC_URI="https://files.pythonhosted.org/packages/00/f7/27f15d41f0ed38e8fcc488584b57e902b331da7f7c6dcda53721b15838fc/fsspec-2025.5.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/adlfs[${PYTHON_USEDEP}]
	dev-python/adlfs[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-1.0.0[${PYTHON_USEDEP}]
	dev-python/dask[${PYTHON_USEDEP}]
	dev-python/distributed[${PYTHON_USEDEP}]
	dev-python/dropbox[${PYTHON_USEDEP}]
	dev-python/dropboxdrivefs[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/adlfs[${PYTHON_USEDEP}]
	dev-python/dask[${PYTHON_USEDEP}]
	dev-python/distributed[${PYTHON_USEDEP}]
	dev-python/dropbox[${PYTHON_USEDEP}]
	dev-python/dropboxdrivefs[${PYTHON_USEDEP}]
	dev-python/fusepy[${PYTHON_USEDEP}]
	dev-python/gcsfs[${PYTHON_USEDEP}]
	dev-python/libarchive-c[${PYTHON_USEDEP}]
	dev-python/ocifs[${PYTHON_USEDEP}]
	dev-python/panel[${PYTHON_USEDEP}]
	dev-python/paramiko[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-1.0.0[${PYTHON_USEDEP}]
	dev-python/pygit2[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/s3fs[${PYTHON_USEDEP}]
	dev-python/smbprotocol[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/fusepy[${PYTHON_USEDEP}]
	dev-python/gcsfs[${PYTHON_USEDEP}]
	dev-python/pygit2[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/gcsfs[${PYTHON_USEDEP}]
	dev-python/panel[${PYTHON_USEDEP}]
	>=dev-python/pyarrow-1.0.0[${PYTHON_USEDEP}]
	dev-python/libarchive-c[${PYTHON_USEDEP}]
	dev-python/ocifs[${PYTHON_USEDEP}]
	dev-python/s3fs[${PYTHON_USEDEP}]
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/smbprotocol[${PYTHON_USEDEP}]
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
"
