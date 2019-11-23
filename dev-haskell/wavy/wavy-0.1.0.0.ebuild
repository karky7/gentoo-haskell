# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Process WAVE files in Haskell"
HOMEPAGE="http://bitbucket.org/robertmassaioli/wavy"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/pretty-show:=[profile?]
	>=dev-haskell/riff-0.3:=[profile?] <dev-haskell/riff-0.4:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=("${FILESDIR}"/${P}-binary-0.8.patch)

src_prepare() {
	default

	cabal_chdeps \
		'vector ==0.10.*' 'vector >= 0.10' \
		'filepath ==1.3.*' 'filepath >= 1.3' \
		'binary ==0.7.*' 'binary >= 0.7' \
		'containers ==0.4.*' 'containers >= 0.4'
}
