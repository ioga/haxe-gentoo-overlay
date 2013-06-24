# Copyright 2013 Ilia Glazkov
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# TODO: Add support for sqlite, mysql, gtk, and apache modules.

EAPI=4
inherit eutils

DESCRIPTION="Neko programming language compiler, virtual machine, and libraries."
HOMEPAGE="http://nekovm.org/"
SRC_URI="http://nekovm.org/_media/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/boehm-gc[threads]
        dev-libs/libpcre:3
        sys-libs/zlib"
RDEPEND="${DEPEND}"

MAKEOPTS+=" -j1"

src_prepare() {
    epatch "${FILESDIR}"/${P}-install.patch
}
