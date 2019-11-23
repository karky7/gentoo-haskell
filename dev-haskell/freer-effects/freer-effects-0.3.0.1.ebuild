# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Implementation of effect system for Haskell"
HOMEPAGE="https://github.com/IxpertaSolutions/freer-effects"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="pedantic test-hlint"

RDEPEND=">=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		test-hlint? ( >=dev-haskell/hlint-1.9 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag pedantic pedantic) \
		$(cabal_flag test-hlint test-hlint)
}
