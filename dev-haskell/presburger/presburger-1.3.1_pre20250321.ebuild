# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A decision procedure for quantifier-free linear arithmetic"
HOMEPAGE="https://github.com/yav/presburger"
GIT_REPO="https://github.com/yav/${PN}"
GIT_COMMIT="e38e61ccd1004d03ab28a1a3691d8a3c451d0164"
GIT_P="${PN}-${GIT_COMMIT}"

SRC_URI="${GIT_REPO}/archive/${GIT_COMMIT}.tar.gz -> ${GIT_P}.tar.gz"
S="${WORKDIR}/${GIT_P}"
CABAL_FILE="${S}/${PN}.cabal"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
RESTRICT="test" # require previous version

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/quickcheck )
"
