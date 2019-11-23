# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin"
inherit eutils haskell-cabal

DESCRIPTION="A purely functional programming language and a proof system"
HOMEPAGE="http://code.google.com/p/omega/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-7.10.patch
	"${FILESDIR}"/${P}-ghc-8.patch
	"${FILESDIR}"/${P}-ghc-802.patch
	"${FILESDIR}"/${P}-ghc-84.patch
)
