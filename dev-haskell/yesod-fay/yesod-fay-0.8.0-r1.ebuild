# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities for using the Fay Haskell-to-JS compiler with Yesod"
HOMEPAGE="https://github.com/fpco/yesod-fay"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/data-default-0.4:=[profile?]
	>=dev-haskell/fay-0.24:=[profile?]
	>=dev-haskell/fay-dom-0.5:=[profile?]
	>=dev-haskell/monad-loops-0.3.3.0:=[profile?]
	>=dev-haskell/puremd5-2.1.2.1:=[profile?]
	dev-haskell/shakespeare:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/utf8-string-0.3.7:=[profile?]
	>=dev-haskell/yesod-core-1.4:=[profile?]
	>=dev-haskell/yesod-form-1.4:=[profile?]
	>=dev-haskell/yesod-static-1.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

PATCHES=(
	"${FILESDIR}"/${P}-fay-0.24.patch
)
