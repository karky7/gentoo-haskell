# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient Arrays"
HOMEPAGE="https://github.com/haskell/vector"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="+boundschecks internalchecks unsafechecks"

RDEPEND=">=dev-haskell/primitive-0.5.0.1:=[profile?] <dev-haskell/primitive-0.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-2.9
		dev-haskell/random
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2
		>=dev-haskell/transformers-0.2.0.0 )
"

src_prepare() {
	local can_spec_const="yes"

	cabal_chdeps \
		"QuickCheck >=  2.7  && < 2.8" "QuickCheck >=  2.7  && < 2.9"

	ghc-supports-interpreter || can_spec_const="no"

	# ghci-less GHC can't do ANN #482960
	if [[ ${can_spec_const} == "no" ]]; then
		einfo "Disabling 'ForceSpecConstr' due to bug #482960"
		sed -e 's/{-# ANN type SPEC ForceSpecConstr #-}/{- # ANN type SPEC ForceSpecConstr #-}/' \
			-i Data/Vector/Fusion/Stream/Monadic.hs || die
	fi
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag boundschecks boundschecks) \
		$(cabal_flag internalchecks internalchecks) \
		$(cabal_flag unsafechecks unsafechecks)
}
