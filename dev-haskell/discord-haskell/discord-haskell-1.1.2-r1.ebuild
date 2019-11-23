# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Write bots for Discord in Haskell"
HOMEPAGE="https://github.com/aquarial/discord-haskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.3.1.1:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/async-2.2.1:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/data-default-0.7.1.1:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	~dev-haskell/emoji-0.1.0.2:=[profile?]
	<dev-haskell/http-client-0.7:=[profile?]
	>=dev-haskell/iso8601-time-0.1.5:=[profile?] <dev-haskell/iso8601-time-0.2:=[profile?]
	>=dev-haskell/juicypixels-3.2.9.5:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-haskell/monadrandom-0.5.1.1:=[profile?] <dev-haskell/monadrandom-0.6:=[profile?]
	<dev-haskell/req-2.2:=[profile?]
	>=dev-haskell/safe-exceptions-0.1.7.0:=[profile?] <dev-haskell/safe-exceptions-0.2:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.9.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/websockets-0.12.5.1:=[profile?] <dev-haskell/websockets-0.13:=[profile?]
	>=dev-haskell/wuss-1.1.10:=[profile?] <dev-haskell/wuss-1.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"


src_prepare() {
	default

	cabal_chdeps \
	'http-client >=0.6.4 && <0.7' 'http-client <0.7' \
	'req >=2.1.0 && <2.2' 'req <2.2'
}
