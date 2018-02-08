# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999
#hackport: flags: +systemlib

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using sqlite3"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="build-sanity-exe"

RDEPEND=">=dev-db/sqlite-3.0
	>=dev-haskell/aeson-0.6.2:=[profile?]
	>=dev-haskell/conduit-1.2.8:=[profile?]
	>=dev-haskell/microlens-th-0.4.1.1:=[profile?]
	>=dev-haskell/monad-logger-0.2.4:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/persistent-2.8.1:=[profile?] <dev-haskell/persistent-3:=[profile?]
	dev-haskell/resource-pool:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hspec
		dev-haskell/persistent-template
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag build-sanity-exe build-sanity-exe) \
		--flag=systemlib
}
