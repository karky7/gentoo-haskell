# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_FEATURES+=" rebuild-after-doc-workaround"

inherit haskell-cabal

DESCRIPTION="Pure-Haskell utilities for dealing with XML with the conduit package"
HOMEPAGE="https://github.com/snoyberg/xml"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-extra-1.3:=[profile?] <dev-haskell/conduit-extra-1.4:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/resourcet-1.2:=[profile?] <dev-haskell/resourcet-1.4:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	>=dev-haskell/xml-types-0.3.4:=[profile?] <dev-haskell/xml-types-0.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0 <dev-haskell/cabal-4
	>=dev-haskell/cabal-doctest-1.0.9 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.8
		>=dev-haskell/hspec-1.3
		dev-haskell/hunit )
"

GHC_BOOTSTRAP_PACKAGES=( cabal-doctest )
