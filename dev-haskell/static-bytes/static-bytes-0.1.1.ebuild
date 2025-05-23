# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Haskell library providing types representing various byte sizes of data"
HOMEPAGE="https://github.com/commercialhaskell/static-bytes#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/memory:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/rio:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck
		dev-haskell/text )
"
