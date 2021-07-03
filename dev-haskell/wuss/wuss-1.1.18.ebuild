# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Secure WebSocket (WSS) clients"
HOMEPAGE="https://hackage.haskell.org/package/wuss"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/connection-0.3.1:=[profile?] <dev-haskell/connection-0.4:=[profile?]
	>=dev-haskell/network-3.1.1:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/websockets-0.12.7:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-lang/ghc-8.8.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.1.0
"