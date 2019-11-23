# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="https://github.com/mrkkrp/megaparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/parser-combinators-0.4:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-expectations-0.5 <dev-haskell/hspec-expectations-0.9
		>=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-2.13 )
"
src_prepare() {
	default

	cabal_chdeps \
		'parser-combinators >= 0.4 && < 1.0' 'parser-combinators >= 0.4' \
		'build-tools:        hspec-discover >= 2.0 && < 3.0' 'build-depends:        hspec-discover >= 2.0 && < 3.0' \
		'QuickCheck   >= 2.7   && < 2.12' 'QuickCheck   >= 2.7'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
