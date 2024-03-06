# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Non-empty vectors"
HOMEPAGE="https://github.com/emilypi/nonempty-vector"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/primitive-0.6:=[profile?] <dev-haskell/primitive-0.10:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/quickcheck
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck
	)
"