# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell 98 invariant functors"
HOMEPAGE="https://github.com/nfrisby/invariant-functors"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bifunctors-5.2:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/comonad-5:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/contravariant-0.5:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/profunctors-5.2.1:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/semigroups-0.16.2:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/statevar-1.1:=[profile?] <dev-haskell/statevar-2:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-3:=[profile?]
	>=dev-haskell/tagged-0.7.3:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/th-abstraction-0.2.2:=[profile?] <dev-haskell/th-abstraction-0.4:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-1.8
		>=dev-haskell/quickcheck-2.11 <dev-haskell/quickcheck-3 )
"
