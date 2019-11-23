# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Missing test files: test-suite"
inherit haskell-cabal

DESCRIPTION="Generate scaffold for cabal project"
HOMEPAGE="https://github.com/fujimura/hi.git#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # missing files

RDEPEND="dev-haskell/ansi-wl-pprint:=[profile?]
	>=dev-haskell/optparse-applicative-0.13.0:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/template-0.2:=[profile?] <dev-haskell/template-0.3:=[profile?]
	>=dev-haskell/temporary-1.2.0.3:=[profile?]
	>dev-haskell/text-1.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
