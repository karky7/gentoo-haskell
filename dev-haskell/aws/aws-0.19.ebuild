# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Amazon Web Services (AWS) for Haskell"
HOMEPAGE="https://github.com/aristidb/aws"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RESTRICT=test # needs aws accound

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/attoparsec-0.11:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base16-bytestring-0.1:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/byteable-0.1:=[profile?] <dev-haskell/byteable-0.2:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/conduit-1.1:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?] <dev-haskell/conduit-extra-1.3:=[profile?]
	>=dev-haskell/cryptonite-0.11:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/http-conduit-2.1:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?] <dev-haskell/http-types-1.0:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/network-2:=[profile?] <dev-haskell/network-3:=[profile?]
	>=dev-haskell/old-locale-1:=[profile?] <dev-haskell/old-locale-2:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/xml-conduit-1.2:=[profile?] <dev-haskell/xml-conduit-2.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	examples? ( >=dev-haskell/errors-2.0:=[profile?]
			dev-haskell/exceptions:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/aeson-0.7
		dev-haskell/conduit-combinators
		>=dev-haskell/http-client-0.3 <dev-haskell/http-client-0.6
		<dev-haskell/http-client-tls-0.5
		>=dev-haskell/lifted-base-0.2
		>=dev-haskell/mtl-2.1
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-instances-0.3
		>=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-hunit-0.8
		>=dev-haskell/tasty-quickcheck-0.8
		>=dev-haskell/text-1.1
		>=dev-haskell/transformers-base-0.4
		!examples? ( >=dev-haskell/errors-2.0 ) )
"

PATCHES=("${FILESDIR}"/${P}-ghc-8.4.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}
