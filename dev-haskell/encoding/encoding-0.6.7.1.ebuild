# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for various character encodings"
HOMEPAGE="http://code.haskell.org/encoding/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
		dev-haskell/extensible-exceptions:=[profile?]
		>=dev-haskell/haxml-1.22:=[profile?]
		<dev-haskell/haxml-1.24:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/regex-compat:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
