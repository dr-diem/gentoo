# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="encoder and decoder of the ITU G729 Annex A/B speech codec"
HOMEPAGE="https://github.com/BelledonneCommunications/bcg729"
EGIT_REPO_URI="https://github.com/BelledonneCommunications/bcg729"
S="${WORKDIR}/${P/_/-}"

LICENSE="GPL-3"
SLOT="0"
RDEPEND="!media-plugins/mediastreamer-bcg729"

PATCHES=(
	"${FILESDIR}"/${PN}-4.3.0_beta-cmake-build.patch
)

src_install() {
	cmake_src_install
	find "${ED}" -name '*.la' -delete || die
}
