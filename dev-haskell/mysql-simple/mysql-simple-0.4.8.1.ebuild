# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: developer:debug

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A mid-level MySQL client library"
HOMEPAGE="https://github.com/paul-rouse/mysql-simple"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RESTRICT=test # need running mysql, missing files

RDEPEND=">=dev-haskell/attoparsec-0.10.0.0:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/blaze-textual:=[profile?]
	>=dev-haskell/mysql-0.1.7:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/pcre-light:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug developer)
}
