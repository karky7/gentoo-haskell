# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite wants >=ghc-paths-0.1.0.12
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.8.1
# KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RESTRICT=test # test-suite wants >=ghc-paths-0.1.0.12

RDEPEND=">=dev-haskell/ghc-paths-0.1.0.9:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haddock-library-1.8.0:=[profile?] <dev-haskell/haddock-library-1.9:=[profile?]
	>=dev-haskell/xhtml-3000.2.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-8.8:=[profile?] <dev-lang/ghc-8.9:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0"
	# test? ( >=dev-haskell/ghc-paths-0.1.0.12 <dev-haskell/ghc-paths-0.2
	# 	>=dev-haskell/hspec-2.4.4 <dev-haskell/hspec-2.8
	# 	>=dev-haskell/quickcheck-2.11 <dev-haskell/quickcheck-2.14 )
