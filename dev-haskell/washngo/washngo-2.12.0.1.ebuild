# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

MY_PN="WashNGo"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="WASH is a family of EDSLs for programming Web applications in Haskell"
HOMEPAGE="http://www.informatik.uni-freiburg.de/~thiemann/haskell/WASH/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

RDEPEND="dev-haskell/ghc-paths:=[profile?]
		dev-haskell/parsec:=[profile?]
		dev-haskell/regex-compat:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-7.6.patch
	"${FILESDIR}"/${P}-ghc-7.10.patch
	"${FILESDIR}"/${P}-cabal2.patch
)

src_prepare() {
	cabal_chdeps \
		'haskell98, parsec < 3' 'parsec'

	default
}
