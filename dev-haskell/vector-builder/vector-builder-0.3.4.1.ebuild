# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Vector builder"
HOMEPAGE="https://github.com/nikita-volkov/vector-builder"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="test" # Circular dependencies: test dep foldl depends on vector-builder

RDEPEND="<dev-haskell/base-prelude-2:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/bug-1 <dev-haskell/bug-2
		>=dev-haskell/criterion-1.1 <dev-haskell/criterion-2
		>=dev-haskell/foldl-1.2
		>=dev-haskell/quickcheck-2.8.1 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.11
		dev-haskell/rebase
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.12
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'foldl == 1.2.*' 'foldl >= 1.2' \
		'tasty >=0.12 && <0.13' 'tasty >=0.12' \
		'tasty-quickcheck >=0.9 && <0.10' 'tasty-quickcheck >=0.9' \
		'tasty-hunit >=0.9 && <0.10' 'tasty-hunit >=0.9' \
		'quickcheck-instances >=0.3.11 && <0.4' 'quickcheck-instances >=0.3.11'
}
