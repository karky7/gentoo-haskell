# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dependent sum type"
HOMEPAGE="https://github.com/mokus0/dependent-sum"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=("${FILESDIR}"/${P}-ghc-8.0.2_rc1.patch)
