# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.10:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	>=dev-haskell/haddock-library-1.2:=[profile?] <dev-haskell/haddock-library-1.3:=[profile?]
	>=dev-haskell/xhtml-3000.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-7.10:= <dev-lang/ghc-7.12:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
