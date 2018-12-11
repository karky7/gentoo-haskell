# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell API Search"
HOMEPAGE="http://hoogle.haskell.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/cmdargs:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?]
	>=dev-haskell/conduit-extra-1.2.3.2:=[profile?]
	dev-haskell/connection:=[profile?]
	>=dev-haskell/extra-1.6.6:=[profile?]
	>=dev-haskell/foundation-0.0.13:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskell-src-exts-1.21:=[profile?] <dev-haskell/haskell-src-exts-1.22:=[profile?]
	>=dev-haskell/http-conduit-2.3:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/js-flot:=[profile?]
	dev-haskell/js-jquery:=[profile?]
	dev-haskell/mmap:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/process-extras:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?]
	dev-haskell/storable-tuple:=[profile?]
	dev-haskell/tar:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/uniplate:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/wai-logger:=[profile?]
	dev-haskell/warp:=[profile?]
	dev-haskell/warp-tls:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
