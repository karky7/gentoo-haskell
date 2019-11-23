# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Toolkit for regex-base"
HOMEPAGE="http://regex.uk"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-0.6:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	~dev-haskell/regex-1.0.1.3:=[profile?]
	>=dev-haskell/regex-base-0.93:=[profile?] <dev-haskell/regex-base-0.94:=[profile?]
	>=dev-haskell/regex-pcre-builtin-0.94:=[profile?] <dev-haskell/regex-pcre-builtin-0.95:=[profile?]
	>=dev-haskell/regex-pcre-text-0.94:=[profile?] <dev-haskell/regex-pcre-text-0.95:=[profile?]
	>=dev-haskell/regex-tdfa-1.2:=[profile?] <dev-haskell/regex-tdfa-1.3:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
