# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -double

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Command-line interface for the hledger accounting tool"
HOMEPAGE="http://hledger.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+terminfo +threaded"

RDEPEND=">=dev-haskell/ansi-terminal-0.6.2.3:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10.1:=[profile?] <dev-haskell/base-compat-batteries-0.11:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	dev-haskell/decimal:=[profile?]
	dev-haskell/diff:=[profile?]
	>=dev-haskell/easytest-0.2.1:=[profile?] <dev-haskell/easytest-0.3:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?]
	>=dev-haskell/haskeline-0.6:=[profile?]
	>=dev-haskell/hledger-lib-1.14.1:=[profile?] <dev-haskell/hledger-lib-1.15:=[profile?]
	dev-haskell/lucid:=[profile?]
	>=dev-haskell/math-functions-0.2.0.0:=[profile?]
	>=dev-haskell/megaparsec-7.0.0:=[profile?] <dev-haskell/megaparsec-8:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/mtl-compat:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/pretty-show-1.6.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/shakespeare-2.0.2.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?]
	>=dev-haskell/utility-ht-0.0.13:=[profile?]
	>=dev-haskell/wizards-1.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	terminfo? ( dev-haskell/terminfo:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-double \
		$(cabal_flag terminfo terminfo) \
		$(cabal_flag threaded threaded)
}
