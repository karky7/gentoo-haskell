# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="JSON pretty-printing library and command-line tool"
HOMEPAGE="https://github.com/informatikr/aeson-pretty"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="lib-only"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/unordered-containers-0.1.3.0:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	!lib-only? ( >=dev-haskell/attoparsec-0.10:=[profile?]
			>=dev-haskell/cmdargs-0.7:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag lib-only lib-only)
}
