# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Painless 2D vector graphics, animations and simulations"
HOMEPAGE="http://gloss.ouroborus.net"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="explicitbackend glfw +glut"

RDEPEND=">=dev-haskell/bmp-1.2:=[profile?] <dev-haskell/bmp-1.3:=[profile?]
	>=dev-haskell/gloss-rendering-1.13:=[profile?] <dev-haskell/gloss-rendering-1.14:=[profile?]
	>=dev-haskell/glut-2.7:=[profile?] <dev-haskell/glut-2.8:=[profile?]
	>=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-3.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	glfw? ( >=dev-haskell/glfw-b-1.4.1.0:=[profile?] <dev-haskell/glfw-b-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	# As per http://hackage.haskell.org/package/gloss-1.13.0.1/revisions/
	cabal_chdeps\
		'base                          >= 4.8 && < 4.12' 'base >=4.8 && <4.13'\
		'containers                    == 0.5.*' 'containers >=0.5 && <0.7'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag explicitbackend explicitbackend) \
		$(cabal_flag glfw glfw) \
		$(cabal_flag glut glut)
}
