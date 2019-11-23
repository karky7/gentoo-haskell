# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Utility functions for testing Megaparsec parsers with Hspec"
HOMEPAGE="https://github.com/mrkkrp/hspec-megaparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dev"

RDEPEND=">=dev-haskell/hspec-expectations-0.8:=[profile?] <dev-haskell/hspec-expectations-0.9:=[profile?]
	>=dev-haskell/megaparsec-6.0:=[profile?] <dev-haskell/megaparsec-7.0:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/void-0.7 <dev-haskell/void-0.8 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dev dev)
}
