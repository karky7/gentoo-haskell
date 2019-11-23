# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An reflex interface for gloss"
HOMEPAGE="https://github.com/reflex-frp/reflex-gloss"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dependent-sum-0.3.2.1:=[profile?]
	>=dev-haskell/gloss-1.9.2.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/reflex-0.4:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.6 && <4.9' 'base >=4.6' \
		'gloss >= 1.9.2.1 && < 1.10' 'gloss >=1.10.2.5' \
		'transformers >= 0.4.2 && < 0.5' 'transformers >=0.4.2' \
		'dependent-sum >= 0.3.2.1 && < 0.4' 'dependent-sum >=0.3.2.1'\
		'reflex >=0.4 && <0.5' 'reflex >=0.4'
}
