# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep" # needs ghc's version as used by leksah
inherit haskell-cabal

DESCRIPTION="Leksah tool kit"
HOMEPAGE="http://www.leksah.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+gtk3"

RDEPEND=">=dev-haskell/cabal-1.6.0:=[profile?]
	>=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/mtl-1.1.0.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-2.1.0.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/gtk3-0.13.2:=[profile?] <dev-haskell/gtk3-0.14:=[profile?] )
	!gtk3? ( >=dev-haskell/gtk-0.13.2:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		--constraint="Cabal == $(cabal-version)" \
		$(cabal_flag gtk3 gtk3)
}
