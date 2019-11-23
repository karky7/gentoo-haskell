# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Sharing/memoization of class members"
HOMEPAGE="http://hackage.haskell.org/package/dictionary-sharing"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
src_prepare() {
	default

	#https://hackage.haskell.org/package/dictionary-sharing-0.1.0.0/revisions/
	cabal_chdeps \
		'containers >=0.5 && <0.6' 'containers >= 0.5'
}
