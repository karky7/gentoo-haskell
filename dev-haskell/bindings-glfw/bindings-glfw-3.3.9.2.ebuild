# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -macosxusechdir,-macosxuseretina,-macosxusemenubar,-mir,x:X,-wayland,+system-glfw

CABAL_PN="bindings-GLFW"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level bindings to GLFW OpenGL library"
HOMEPAGE="https://hackage.haskell.org/package/bindings-GLFW"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+X exposenative osmesa"
RESTRICT=test #fails

CABAL_CHDEPS=(
	'glfw3 == 3.3.*' 'glfw3 >= 3.3'
	)

RDEPEND=">=dev-haskell/bindings-dsl-1.0:=[profile?] <dev-haskell/bindings-dsl-1.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=media-libs/glfw-3.3
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	virtual/pkgconfig
"
#	test? ( >=dev-haskell/hunit-1.3 <dev-haskell/hunit-1.7
#		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
#		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )


src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag exposenative exposenative) \
		--flag=-macosxusechdir \
		--flag=-macosxusemenubar \
		--flag=-macosxuseretina \
		--flag=-mir \
		$(cabal_flag osmesa osmesa) \
		--flag=system-glfw \
		--flag=-wayland \
		$(cabal_flag X x)
}
