# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: needs a port to new srcloc
inherit haskell-cabal

DESCRIPTION="Domain Name Service (DNS) lookup via the libresolv standard library routines"
HOMEPAGE="http://hackage.haskell.org/package/resolv"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fails to build test suite

RDEPEND=">=dev-haskell/base16-bytestring-0.1:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base              >= 4.5 && <4.11' 'base              >= 4.5' \
		'containers        >= 0.4.2.1 && < 0.6' 'containers        >= 0.4.2.1' \
		'tasty         >= 0.11.2  && < 0.12' 'tasty         >= 0.11.2' \
		'tasty-hunit   >= 0.9.2   && < 0.10' 'tasty-hunit   >= 0.9.2'
}
