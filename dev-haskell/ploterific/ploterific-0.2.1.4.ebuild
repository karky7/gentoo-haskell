# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Basic plotting of tabular data for the command line"
HOMEPAGE="https://github.com/GregorySchwartz/ploterific#readme"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-9.8.patch
)

RDEPEND="
	dev-haskell/cassava:=[profile?]
	dev-haskell/colour:=[profile?]
	dev-haskell/hvega:=[profile?]
	dev-haskell/hvega-theme:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/optparse-generic:=[profile?]
	dev-haskell/palette:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"
