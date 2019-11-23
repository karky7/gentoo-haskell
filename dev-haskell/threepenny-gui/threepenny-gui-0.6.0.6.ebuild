# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GUI framework that uses the web browser as a display"
HOMEPAGE="http://wiki.haskell.org/Threepenny-gui"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildexamples +network-uri rebug"

RDEPEND=">=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.2:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.6:=[profile?]
	>=dev-haskell/hashable-1.1.0:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/snap-core-0.9:=[profile?] <dev-haskell/snap-core-0.10:=[profile?]
	>=dev-haskell/snap-server-0.9:=[profile?] <dev-haskell/snap-server-0.10:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3.0:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/websockets-0.8:=[profile?] <dev-haskell/websockets-0.10:=[profile?]
	>=dev-haskell/websockets-snap-0.8:=[profile?] <dev-haskell/websockets-snap-0.10:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	>=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	network-uri? ( >=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.3.0:=[profile?] <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples) \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag rebug rebug)
}
