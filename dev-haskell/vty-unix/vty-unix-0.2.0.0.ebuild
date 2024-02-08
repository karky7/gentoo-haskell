# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Unix backend for Vty"
HOMEPAGE="https://hackage.haskell.org/package/vty-unix"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/microlens-mtl:=[profile?]
	dev-haskell/microlens-th:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/vty-6.1:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"