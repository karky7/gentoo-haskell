# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the glade library"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.13.4:0=[profile?] <dev-haskell/glib-0.14:0=[profile?]
	>=dev-haskell/gtk-0.14.5:2=[profile?] <dev-haskell/gtk-0.15:2=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gnome-base/libglade:2.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	>=dev-haskell/gtk2hs-buildtools-0.13.2.0:0= <dev-haskell/gtk2hs-buildtools-0.14:0=
	virtual/pkgconfig
"

src_prepare() {
	default

	cabal_chdeps \
		'Cabal >= 1.24 && < 1.25' 'Cabal >= 1.24'
}
