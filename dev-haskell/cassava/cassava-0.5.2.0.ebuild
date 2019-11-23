# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A CSV parsing and encoding library"
HOMEPAGE="https://github.com/hvr/cassava"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.11.3.0:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	<dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/nats-1:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/only-0.1:=[profile?] <dev-haskell/only-0.1.1:=[profile?]
	>=dev-haskell/scientific-0.3.4.7:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18.2:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-short-0.1:=[profile?] <dev-haskell/text-short-0.2:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.8:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.13 <dev-haskell/quickcheck-2.14
		>=dev-haskell/quickcheck-instances-0.3.12 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4 )
"
