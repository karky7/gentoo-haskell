# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GHC plugin to make stream fusion more predictable"
HOMEPAGE="https://github.com/composewell/fusion-plugin"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=('ghc          >= 7.10.3  && <  9.11' 'ghc          >= 7.10.3  && <  9.13' 'time         >= 1.5     && <  1.14' 'time         >= 1.5     && <  1.15')

RDEPEND=">=dev-haskell/fusion-plugin-types-0.1:=[profile?] <dev-haskell/fusion-plugin-types-0.2:=[profile?]
	>=dev-haskell/syb-0.7:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-lang/ghc-9.0.2:=[profile?] <dev-lang/ghc-9.13:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
