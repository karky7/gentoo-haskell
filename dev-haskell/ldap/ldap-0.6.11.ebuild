# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: missing files
inherit haskell-cabal

MY_PN="LDAP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Haskell binding for C LDAP API"
HOMEPAGE="https://github.com/ezyang/ldap-haskell"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildtests"

RESTRICT=test # missing files

RDEPEND=">=dev-lang/ghc-7.4.1:=
	net-nds/openldap
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildtests buildtests)
}
