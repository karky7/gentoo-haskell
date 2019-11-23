# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A system-independent interface for user-level packet capture"
HOMEPAGE="https://github.com/bos/pcap"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha amd64 ~ia64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND="dev-haskell/network:=[profile?]
		>=dev-lang/ghc-6.12.1:=
		net-libs/libpcap"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
