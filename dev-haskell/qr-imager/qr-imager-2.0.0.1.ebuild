# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library to generate images"
HOMEPAGE="https://github.com/vmchale/QRImager#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cryptonite:=[profile?]
	dev-haskell/haskell-qrencode:=[profile?]
	dev-haskell/jose-jwt:=[profile?]
	dev-haskell/juicypixels:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/vector:=[profile?]
	media-gfx/qrencode:=
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	virtual/pkgconfig
	test? ( dev-haskell/hspec )
"
