# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generically derive traversals, lenses and prisms"
HOMEPAGE="https://github.com/kcsongor/generic-lens"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dump-core"

RESTRICT="test" # Test suite examples-doctests: FAIL

RDEPEND=">=dev-haskell/profunctors-5.0:=[profile?] <dev-haskell/profunctors-6.0:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/doctest
		dev-haskell/hunit
		>=dev-haskell/inspection-testing-0.2
		dev-haskell/lens
		dump-core? ( dev-haskell/dump-core ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dump-core dump-core)
}
