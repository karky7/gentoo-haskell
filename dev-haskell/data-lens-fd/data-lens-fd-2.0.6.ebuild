# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lenses"
HOMEPAGE="https://github.com/roconnor/data-lens-fd/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+derivedatatypeable"

RDEPEND=">=dev-haskell/comonad-4.0:=[profile?] <dev-haskell/comonad-5.1:=[profile?]
	>=dev-haskell/data-lens-2.10.4:=[profile?] <dev-haskell/data-lens-2.12:=[profile?]
	>=dev-haskell/mtl-2.0.1.0:=[profile?] <=dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag derivedatatypeable derivedatatypeable)
}
