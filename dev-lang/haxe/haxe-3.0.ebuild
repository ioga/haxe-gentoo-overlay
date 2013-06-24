# Copyright 2013 Ilia Glazkov
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit eutils subversion

DESCRIPTION="Haxe programming language"
HOMEPAGE="http://haxe.org/"
ESVN_REPO_URI="http://haxe.googlecode.com/svn/tags/v3-00"

LICENSE="GPL-2 LGPL-2.1 BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+neko"

RDEPEND="neko? ( >=dev-lang/neko-2.0.0 )"
DEPEND="${RDEPEND}
        dev-lang/ocaml[ocamlopt]
        sys-libs/zlib"

MAKEOPTS+=" -j1"

src_prepare() {
    epatch ${FILESDIR}/${P}-install.patch
}

src_install() {
    default_src_install

    doenvd ${FILESDIR}/99haxe
}
