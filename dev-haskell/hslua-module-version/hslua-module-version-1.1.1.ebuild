# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lua module to work with version specifiers"
HOMEPAGE="https://hslua.org/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hslua-core-2.3:=[profile?] <dev-haskell/hslua-core-2.4:=[profile?]
	>=dev-haskell/hslua-marshalling-2.3:=[profile?] <dev-haskell/hslua-marshalling-2.4:=[profile?]
	>=dev-haskell/hslua-packaging-2.3:=[profile?] <dev-haskell/hslua-packaging-2.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit
		>=dev-haskell/tasty-lua-1.0 <dev-haskell/tasty-lua-1.2 )
"
