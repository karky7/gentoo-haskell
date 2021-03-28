# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Batteries included conduit: adapters for common libraries"
HOMEPAGE="https://github.com/snoyberg/conduit"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # HANG: cat: 'does not exist': No such file or directory

RDEPEND="dev-haskell/async:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/streaming-commons-0.1.16:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/typed-process-0.2.6:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/bytestring-builder
		dev-haskell/exceptions
		>=dev-haskell/hspec-1.3
		dev-haskell/quickcheck
		dev-haskell/transformers-base )
"
