# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell source code formatter"
HOMEPAGE="https://github.com/lspitzner/brittany/"

LICENSE="AGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="pedantic"

RDEPEND=">=dev-haskell/aeson-2.0.1:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/butcher-1.3.3:=[profile?] <dev-haskell/butcher-1.4:=[profile?]
	>=dev-haskell/cmdargs-0.10.21:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/czipwith-1.0.1:=[profile?] <dev-haskell/czipwith-1.1:=[profile?]
	>=dev-haskell/data-tree-print-0.1.0:=[profile?] <dev-haskell/data-tree-print-0.2:=[profile?]
	>=dev-haskell/extra-1.7.10:=[profile?] <dev-haskell/extra-1.8:=[profile?]
	>=dev-haskell/ghc-exactprint-0.6.4:=[profile?] <dev-haskell/ghc-exactprint-0.7:=[profile?]
	>=dev-haskell/monad-memo-0.5.3:=[profile?] <dev-haskell/monad-memo-0.6:=[profile?]
	>=dev-haskell/multistate-0.8.0:=[profile?] <dev-haskell/multistate-0.9:=[profile?]
	>=dev-haskell/random-1.2.1:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/safe-0.3.19:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/semigroups-0.19.2:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/strict-0.4.0:=[profile?] <dev-haskell/strict-0.5:=[profile?]
	>=dev-haskell/syb-0.7.2:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/uniplate-1.6.13:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-haskell/yaml-0.11.7:=[profile?] <dev-haskell/yaml-0.12:=[profile?]
	>=dev-lang/ghc-9.0.1:=[profile?] <dev-lang/ghc-9.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2.8.3 <dev-haskell/hspec-2.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag pedantic pedantic)
}
