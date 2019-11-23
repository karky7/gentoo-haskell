# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions for animation"
HOMEPAGE="http://hackage.haskell.org/package/active"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/linear-1.14:=[profile?] <dev-haskell/linear-1.21:=[profile?]
	>=dev-haskell/semigroupoids-1.2:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( >=dev-haskell/quickcheck-2.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.9 && < 2.14' 'QuickCheck >= 2.9' \
		'lens >= 4.0 && < 4.19' 'lens >= 4.0' \
		'base >= 4.0 && < 4.14' 'base >= 4.0' \
		'semigroupoids >= 1.2 && < 5.4' 'semigroupoids >= 1.2'
}
