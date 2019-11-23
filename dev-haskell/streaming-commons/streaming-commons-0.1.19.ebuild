# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Common lower-level functions needed by various streaming data libraries"
HOMEPAGE="https://github.com/fpco/streaming-commons"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/async:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/network-2.4.0.0:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-1.8
		dev-haskell/quickcheck )
"
