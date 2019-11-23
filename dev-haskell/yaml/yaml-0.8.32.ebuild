# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Support for parsing and rendering YAML documents"
HOMEPAGE="https://github.com/snoyberg/yaml#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+no-examples +no-exe no-unicode system-libyaml"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?]
	>=dev-haskell/attoparsec-0.11.3.0:=[profile?]
	>=dev-haskell/conduit-1.2.8:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.0.2:=
	!no-examples? ( dev-haskell/raw-strings-qq:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
	test? ( dev-haskell/base-compat
		>=dev-haskell/hspec-1.3
		dev-haskell/hunit
		dev-haskell/mockery
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag no-examples no-examples) \
		$(cabal_flag no-exe no-exe) \
		$(cabal_flag no-unicode no-unicode) \
		$(cabal_flag system-libyaml system-libyaml)
}
