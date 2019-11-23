# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="CAES Language for Synchronous Hardware"
HOMEPAGE="http://www.clash-lang.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bifunctors-4.1.1:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-haskell/clash-lib-0.99.3:=[profile?] <dev-haskell/clash-lib-1.0:=[profile?]
	>=dev-haskell/clash-prelude-0.99.3:=[profile?] <dev-haskell/clash-prelude-1.0:=[profile?]
	>=dev-haskell/concurrent-supply-0.1.7:=[profile?] <dev-haskell/concurrent-supply-0.2:=[profile?]
	>=dev-haskell/ghc-typelits-extra-0.2.5:=[profile?] <dev-haskell/ghc-typelits-extra-0.3:=[profile?]
	>=dev-haskell/ghc-typelits-knownnat-0.5:=[profile?] <dev-haskell/ghc-typelits-knownnat-0.6:=[profile?]
	>=dev-haskell/ghc-typelits-natnormalise-0.6:=[profile?] <dev-haskell/ghc-typelits-natnormalise-0.7:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/haskeline-0.7.0.3:=[profile?] <dev-haskell/haskeline-0.8:=[profile?]
	>=dev-haskell/lens-4.0.5:=[profile?] <dev-haskell/lens-4.18:=[profile?]
	>=dev-haskell/mtl-2.1.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/primitive-0.5.0.1:=[profile?] <dev-haskell/primitive-1.0:=[profile?]
	>=dev-haskell/reflection-2.1.2:=[profile?] <dev-haskell/reflection-3.0:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unbound-generics-0.1:=[profile?] <dev-haskell/unbound-generics-0.4:=[profile?]
	>=dev-haskell/uniplate-1.6.12:=[profile?] <dev-haskell/uniplate-1.8:=[profile?]
	>=dev-haskell/unordered-containers-0.2.1.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-1.0:=[profile?]
	>=dev-lang/ghc-8.2.0:=[profile?] <dev-lang/ghc-8.8:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
"
