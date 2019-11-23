# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Host content provided by a Git repo"
HOMEPAGE="https://github.com/snoyberg/yesod-gitrepo"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/enclosed-exceptions:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	>=dev-haskell/temporary-1.2:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?]
	>=dev-haskell/yesod-core-1.2:=[profile?] <dev-haskell/yesod-core-1.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
