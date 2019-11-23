# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Project bindings-* raw interface to gpgme"
HOMEPAGE="https://github.com/jwiegley/bindings-dsl"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bindings-dsl-1.0.16:=[profile?] <dev-haskell/bindings-dsl-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	app-crypt/gpgme
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
