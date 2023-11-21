# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal pax-utils

DESCRIPTION="Safely evaluate pure Haskell expressions"
HOMEPAGE="https://github.com/gwern/mueval"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/cabal:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/hint-0.3.1:=[profile?]
	>dev-haskell/mtl-2:=[profile?]
	dev-haskell/quickcheck:=[profile?]
	>=dev-haskell/show-0.3:=[profile?]
	dev-haskell/simple-reflect:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

# default mueval timeout. in 0.7-second units
# Handy to change as lambdabot does not
# allow this bit to configure
: ${MUEVAL_TIMEOUT:=5}

CABAL_EXTRA_BUILD_FLAGS+=" --ghc-options=-rtsopts"

src_prepare() {
	default

	einfo "Using default mueval timeout: ${MUEVAL_TIMEOUT} * 0.7s"
	sed -e "s@timeLimit = 5@timeLimit = ${MUEVAL_TIMEOUT}@" \
		-i "${S}"/Mueval/ArgsParse.hs || die

	# i wonder why they do it
	cabal_chdeps \
		' -static' ' '
}

src_install() {
	cabal_src_install
	# uses GHC-api which needs mmap('rwx') (bug #299709)
	pax-mark -m "${ED}/usr/bin/mueval-core"
}
