# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Xournal file parser"
HOMEPAGE="http://ianwookim.org/hoodle"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">dev-haskell/attoparsec-0.10:=[profile?]
	>dev-haskell/attoparsec-conduit-0.5:=[profile?]
	>dev-haskell/conduit-1:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?]
	>=dev-haskell/exceptions-0.5:=[profile?]
	>=dev-haskell/lens-2.5:=[profile?]
	dev-haskell/mtl:=[profile?]
	>dev-haskell/strict-0.3:=[profile?]
	>dev-haskell/text-0.11:=[profile?]
	>dev-haskell/transformers-0.3:=[profile?]
	>dev-haskell/xml-conduit-1.0:=[profile?]
	>dev-haskell/xml-types-0.3:=[profile?]
	>=dev-haskell/xournal-types-0.5.1:=[profile?]
	>dev-haskell/zlib-conduit-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
