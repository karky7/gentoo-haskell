# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parser for TOML files"
HOMEPAGE="https://github.com/cies/htoml"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'text                   >= 1.0    && < 2' 'text >= 1.0'
	)

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/parsec-3.1.2:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/text-1.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/file-embed
		dev-haskell/tasty
		dev-haskell/tasty-hspec
		dev-haskell/tasty-hunit )
"

PATCHES=(
	"${FILESDIR}"/${P}-tasty-hspec-1.1.7.patch
	"${FILESDIR}"/${P}-aeson.patch
)
