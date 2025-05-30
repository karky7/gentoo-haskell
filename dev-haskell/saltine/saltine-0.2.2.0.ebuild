# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cryptography that's easy to digest (NaCl/libsodium bindings)"
HOMEPAGE="https://hackage.haskell.org/package/saltine"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/hashable:=[profile?]
	>=dev-haskell/profunctors-5.3:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	dev-libs/libsodium
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	virtual/pkgconfig
	test? ( dev-haskell/quickcheck
		dev-haskell/semigroups
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2
		dev-haskell/text )
"
BDEPEND="
	virtual/pkgconfig
"
