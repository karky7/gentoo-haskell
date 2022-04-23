# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: +optimize-gmp
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Concise Binary Object Representation (CBOR)"
HOMEPAGE="https://hackage.haskell.org/package/cborg"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/half-0.2.2.3:=[profile?] <dev-haskell/half-0.4:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/aeson-0.7 <dev-haskell/aeson-2.1
		dev-haskell/base-orphans
		>=dev-haskell/base16-bytestring-1.0 <dev-haskell/base16-bytestring-1.1
		>=dev-haskell/base64-bytestring-1.0 <dev-haskell/base64-bytestring-1.3
		>=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.15
		dev-haskell/random
		>=dev-haskell/scientific-0.3 <dev-haskell/scientific-0.4
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11
		>=dev-haskell/vector-0.10 <dev-haskell/vector-0.13 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=optimize-gmp
}
