# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell bindings for the C Wayland library"
HOMEPAGE="http://hackage.haskell.org/package/hayland"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs running wayland

RDEPEND="<dev-haskell/data-flags-0.1:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	dev-libs/wayland
	media-libs/mesa[wayland]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	dev-haskell/c2hs
"

src_prepare() {
	cabal_chdeps \
		'base >=4.7 && <4.8' 'base >=4.7' \
		'time <1.5' 'time'
}
