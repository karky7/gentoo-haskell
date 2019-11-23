# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: -two,+mtl

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A small compatibility shim for dev-haskell/transformers"
HOMEPAGE="https://github.com/ekmett/transformers-compat/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	>=dev-haskell/mtl-2.1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	cabal_chdeps \
		'transformers >= 0.4.1 && < 0.5' 'transformers >= 0.4.1'
}

src_configure() {
	local tf_arg=()

	if has_version '=dev-haskell/transformers-0.3*'; then
		tf_arg+=(--flag=three)
	else
		tf_arg+=(--flag=-three)
	fi

	haskell-cabal_src_configure \
		--flag=mtl \
		--flag=-two \
		${tf_arg[@]}
}
