# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Image loading and writing microlibrary"
HOMEPAGE="https://github.com/sasinestro/stb-image-redux#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/vector-0.10.12.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/hspec-2.1.5 )
"

src_prepare() {
	default

	cabal_chdeps \
		'hspec >=2.1.5 && <2.4' 'hspec >=2.1.5' \
		'vector >=0.10.12.3 && <0.12' 'vector >=0.10.12.3' \
		'base >=4.9.0.0 && <4.10' 'base >=4.9.0.0' \
		'stb-image-redux >=0.2.1.0 && <0.3' 'stb-image-redux'
}
