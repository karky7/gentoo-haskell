# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Basic singleton types and definitions"
HOMEPAGE="https://www.github.com/goldfirere/singletons"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"