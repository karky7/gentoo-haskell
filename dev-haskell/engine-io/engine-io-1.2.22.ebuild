# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell implementation of Engine.IO"
HOMEPAGE="https://github.com/ocharles/engine.io"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.11:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/errors-2.0.0:=[profile?] <dev-haskell/errors-2.4:=[profile?]
	>=dev-haskell/free-4.9:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/monad-loops-0.4:=[profile?] <dev-haskell/monad-loops-0.5:=[profile?]
	>=dev-haskell/mwc-random-0.13:=[profile?] <dev-haskell/mwc-random-0.15:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/stm-delay-0.1.1:=[profile?] <dev-haskell/stm-delay-0.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/websockets-0.11:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.6 && <4.13' 'base >=4.6'
}
