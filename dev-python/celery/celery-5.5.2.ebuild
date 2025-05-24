# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Distributed Task Queue"
HOMEPAGE="https://docs.celeryq.dev/"
SRC_URI="https://files.pythonhosted.org/packages/bf/03/5d9c6c449248958f1a5870e633a29d7419ff3724c452a98ffd22688a1a6a/celery-5.5.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/billiard-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/billiard-4.2.1[${PYTHON_USEDEP}]
	<dev-python/kombu-5.6.0[${PYTHON_USEDEP}]
	>=dev-python/kombu-5.5.2[${PYTHON_USEDEP}]
	>=dev-python/vine-5.1.0[${PYTHON_USEDEP}]
	<dev-python/vine-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/click-8.1.2[${PYTHON_USEDEP}]
	<dev-python/click-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/click-didyoumean-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/click-repl-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/click-plugins-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
	~dev-python/cryptography-44.0.2[${PYTHON_USEDEP}]
	>=dev-python/azure-storage-blob-12.15.0[${PYTHON_USEDEP}]
	>=dev-python/azure-identity-1.19.0[${PYTHON_USEDEP}]
	<dev-python/cassandra-driver-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/cassandra-driver-3.25.0[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.26.143[${PYTHON_USEDEP}]
	<dev-python/sqlalchemy-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-1.4.48[${PYTHON_USEDEP}]
	~dev-python/zstandard-0.23.0[${PYTHON_USEDEP}]
	>=dev-python/django-2.2.28[${PYTHON_USEDEP}]
	>=dev-python/redis-4.5.2[${PYTHON_USEDEP}]
	<dev-python/redis-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/google-cloud-storage-2.10.0[${PYTHON_USEDEP}]
	~dev-python/google-cloud-firestore-2.20.1[${PYTHON_USEDEP}]
	~dev-python/grpcio-1.67.0[${PYTHON_USEDEP}]
	~dev-python/python-consul2-0.1.5[${PYTHON_USEDEP}]
	~dev-python/pydocumentdb-2.3.5[${PYTHON_USEDEP}]
	>=dev-python/softlayer-messaging-1.0.3[${PYTHON_USEDEP}]
	>=dev-python/gevent-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.4.0[${PYTHON_USEDEP}]
	<=dev-python/elasticsearch-8.17.2[${PYTHON_USEDEP}]
	<=dev-python/elastic-transport-8.17.1[${PYTHON_USEDEP}]
	>=dev-python/brotlipy-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/brotli-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.26.143[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.16[${PYTHON_USEDEP}]
	>=dev-python/kombu-5.3.4[${PYTHON_USEDEP}]
	>=dev-python/kazoo-1.3.1[${PYTHON_USEDEP}]
	~dev-python/msgpack-1.1.0[${PYTHON_USEDEP}]
	~dev-python/ephem-4.2.0[${PYTHON_USEDEP}]
	>=dev-python/pyarango-2.0.2[${PYTHON_USEDEP}]
	~dev-python/pycouchdb-1.16.0[${PYTHON_USEDEP}]
	~dev-python/pymongo-4.10.1[${PYTHON_USEDEP}]
	>=dev-python/python-memcached-1.61.0[${PYTHON_USEDEP}]
	>=dev-python/boto3-1.26.143[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.10.0[${PYTHON_USEDEP}]
"
