# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HTF"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The Haskell Test Framework"
HOMEPAGE="https://github.com/skogsbaer/HTF/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/cpphs-1.19:=[profile?]
	>=dev-haskell/diff-0.3:=[profile?]
	dev-haskell/haskell-src:=[profile?]
	>=dev-haskell/hunit-1.2.5:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/mtl-1.1:=[profile?]
	>=dev-haskell/old-time-1.0:=[profile?]
	>=dev-haskell/quickcheck-2.3:2=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/regex-compat-0.92:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/xmlgen-0.6:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/aeson-pretty
		>=dev-haskell/temporary-1.1
		>=dev-haskell/unordered-containers-0.2 )
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-aeson-pretty-0.8.patch
}
