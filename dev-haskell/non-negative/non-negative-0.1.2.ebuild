# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Non-negative numbers"
HOMEPAGE="http://code.haskell.org/~thielema/non-negative/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/quickcheck-2.1:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/utility-ht-0.0.1:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
