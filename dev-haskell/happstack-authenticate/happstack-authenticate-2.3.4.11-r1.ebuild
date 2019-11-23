# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Happstack Authentication Library"
HOMEPAGE="http://www.happstack.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/acid-state-0.6:=[profile?] <dev-haskell/acid-state-0.15:=[profile?]
	>=dev-haskell/authenticate-1.3:=[profile?] <dev-haskell/authenticate-1.4:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/boomerang-1.4:=[profile?] <dev-haskell/boomerang-1.5:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/email-validate-2.1:=[profile?] <dev-haskell/email-validate-2.4:=[profile?]
	>=dev-haskell/happstack-hsp-7.3:=[profile?] <dev-haskell/happstack-hsp-7.4:=[profile?]
	>=dev-haskell/happstack-jmacro-7.0:=[profile?] <dev-haskell/happstack-jmacro-7.1:=[profile?]
	>=dev-haskell/happstack-server-6.0:=[profile?] <dev-haskell/happstack-server-7.6:=[profile?]
	>=dev-haskell/hsp-0.10:=[profile?] <dev-haskell/hsp-0.11:=[profile?]
	>=dev-haskell/hsx-jmacro-7.3:=[profile?] <dev-haskell/hsx-jmacro-7.4:=[profile?]
	>=dev-haskell/hsx2hs-0.13:=[profile?] <dev-haskell/hsx2hs-0.15:=[profile?]
	>=dev-haskell/http-conduit-2.1.0:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/http-types-0.6:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/ixset-typed-0.3:=[profile?] <dev-haskell/ixset-typed-0.5:=[profile?]
	>=dev-haskell/jmacro-0.6.11:=[profile?] <dev-haskell/jmacro-0.7:=[profile?]
	>=dev-haskell/jwt-0.3:=[profile?] <dev-haskell/jwt-0.8:=[profile?]
	>=dev-haskell/lens-4.2:=[profile?]
	>=dev-haskell/mime-mail-0.4:=[profile?] <dev-haskell/mime-mail-0.5:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pwstore-purehaskell-2.1:=[profile?] <dev-haskell/pwstore-purehaskell-2.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/safecopy-0.8:=[profile?] <dev-haskell/safecopy-0.10:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/userid-0.1:=[profile?] <dev-haskell/userid-0.2:=[profile?]
	>=dev-haskell/web-routes-0.26:=[profile?] <dev-haskell/web-routes-0.28:=[profile?]
	>=dev-haskell/web-routes-boomerang-0.28:=[profile?] <dev-haskell/web-routes-boomerang-0.29:=[profile?]
	>=dev-haskell/web-routes-happstack-0.23:=[profile?] <dev-haskell/web-routes-happstack-0.24:=[profile?]
	>=dev-haskell/web-routes-hsp-0.24:=[profile?] <dev-haskell/web-routes-hsp-0.25:=[profile?]
	>=dev-haskell/web-routes-th-0.22:=[profile?] <dev-haskell/web-routes-th-0.23:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/aeson-0.11:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

PATCHES=(${FILESDIR}/${PN}-2.3.4.11-ghc-8.6.patch)

src_prepare() {
	default

	cabal_chdeps \
		'aeson                        (>= 0.4  && < 0.10) || (>= 0.11 && < 1.3)' 'aeson                        >= 0.11' \
		'containers                   >= 0.4  && < 0.6' 'containers                   >= 0.4' \
		'lens                         >= 4.2  && < 4.17' 'lens                         >= 4.2'
}
