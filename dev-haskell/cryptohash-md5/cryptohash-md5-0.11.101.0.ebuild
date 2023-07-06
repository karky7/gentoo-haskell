# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast, pure and practical MD5 implementation"
HOMEPAGE="https://github.com/haskell-hvr/cryptohash-md5"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/base16-bytestring-1.0.1.0 <dev-haskell/base16-bytestring-1.1
		>=dev-haskell/puremd5-2.1.3 <dev-haskell/puremd5-2.2
		=dev-haskell/tasty-1.4*
		=dev-haskell/tasty-hunit-0.10*
		=dev-haskell/tasty-quickcheck-0.10*
	)
"
