# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Graphalyze"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Graph-Theoretic Analysis library"
HOMEPAGE="http://hackage.haskell.org/package/Graphalyze"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-text/pandoc-1.12:=[profile?]
	>=dev-haskell/bktrees-0.2:=[profile?] <dev-haskell/bktrees-0.4:=[profile?]
	>=dev-haskell/fgl-5.5:=[profile?] <dev-haskell/fgl-5.6:=[profile?]
	>=dev-haskell/graphviz-2999.15:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"

PATCHES=(
	"${FILESDIR}"/${P}-pandoc-1.16.patch
	"${FILESDIR}"/${P}-fgl-5.5.3.0.patch
	"${FILESDIR}"/${P}-pandoc-1.18.patch
	"${FILESDIR}"/${P}-pandoc-1.19.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'time == 1.5.*' 'time >= 1.5' \
		'graphviz >= 2999.15 && < 2999.19' 'graphviz >= 2999.15'
}
