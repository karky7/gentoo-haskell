# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Marking text regions"
HOMEPAGE="https://github.com/mvoidex/text-region"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?]
	>=dev-haskell/base-unicode-symbols-0.2:=[profile?]
	>=dev-haskell/groups-0.4.0:=[profile?]
	>=dev-haskell/lens-4.12:=[profile?]
	>=dev-haskell/text-1.2.1:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hspec )
"
