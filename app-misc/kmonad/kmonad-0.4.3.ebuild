# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -dext,-kext

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Advanced keyboard remapping utility"
HOMEPAGE="https://hackage.haskell.org/package/kmonad"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/cereal:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/megaparsec:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/rio:=[profile?]
	dev-haskell/unliftio:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dext \
		--flag=-kext
}
