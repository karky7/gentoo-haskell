# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Machine Learning algorithms"
HOMEPAGE="https://github.com/mdibaiee/sibe"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/chart:=[profile?]
	dev-haskell/chart-cairo:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/hmatrix:=[profile?]
	dev-haskell/juicypixels:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/random-shuffle:=[profile?]
	dev-haskell/regex-base:=[profile?]
	dev-haskell/regex-pcre:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/stemmer:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'JuicyPixels < 3.3' 'JuicyPixels'
}
