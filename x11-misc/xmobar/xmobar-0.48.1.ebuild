# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -all_extensions,+with_threaded,+with_utf8,-with_iwlib,with_nl80211:wifi,+with_inotify,-with_kraken

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Minimalistic Text Based Status Bar"
HOMEPAGE="https://codeberg.org/xmobar/xmobar"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="alsa datezone dbus mpd mpris +rtsopts shared uvmeter +weather wifi xpm +xrender"

RDEPEND=">=dev-haskell/aeson-1.4.7.1:=[profile?]
	dev-haskell/async:=[profile?]
	>=dev-haskell/cairo-0.13:=[profile?]
	>=dev-haskell/colour-2.3.6:=[profile?]
	>=dev-haskell/extensible-exceptions-0.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/hinotify-0.3:=[profile?] <dev-haskell/hinotify-0.5:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/pango-0.13:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/parsec-numbers-0.1.0:=[profile?]
	dev-haskell/regex-compat:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/x11-1.6.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	x11-libs/libXrandr
	x11-libs/libXrender
	alsa? ( >=dev-haskell/alsa-core-0.5:=[profile?] <dev-haskell/alsa-core-0.6:=[profile?]
		>=dev-haskell/alsa-mixer-0.3:=[profile?] <dev-haskell/alsa-mixer-0.4:=[profile?] )
	datezone? ( >=dev-haskell/timezone-olson-0.2:=[profile?] <dev-haskell/timezone-olson-0.3:=[profile?]
			>=dev-haskell/timezone-series-0.1:=[profile?] <dev-haskell/timezone-series-0.2:=[profile?] )
	dbus? ( >=dev-haskell/dbus-1:=[profile?] )
	mpd? ( >=dev-haskell/libmpd-0.9.2.0:=[profile?] )
	mpris? ( >=dev-haskell/dbus-1:=[profile?] )
	uvmeter? ( dev-haskell/http-conduit:=[profile?]
			dev-haskell/http-types:=[profile?] )
	weather? ( dev-haskell/http-client-tls:=[profile?]
			dev-haskell/http-conduit:=[profile?]
			dev-haskell/http-types:=[profile?] )
	wifi? ( >=dev-haskell/cereal-0.5.8.1:=[profile?]
		>=dev-haskell/netlink-1.1.1.0:=[profile?] )
	xpm? ( x11-libs/libXpm )
	xrender? ( >=dev-haskell/x11-xft-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-all_extensions \
		$(cabal_flag alsa with_alsa) \
		$(cabal_flag datezone with_datezone) \
		$(cabal_flag dbus with_dbus) \
		--flag=with_inotify \
		--flag=-with_iwlib \
		--flag=-with_kraken \
		$(cabal_flag mpd with_mpd) \
		$(cabal_flag mpris with_mpris) \
		$(cabal_flag wifi with_nl80211) \
		$(cabal_flag rtsopts with_rtsopts) \
		$(cabal_flag shared with_shared) \
		--flag=with_threaded \
		--flag=with_utf8 \
		$(cabal_flag uvmeter with_uvmeter) \
		$(cabal_flag weather with_weather) \
		$(cabal_flag xpm with_xpm) \
		$(cabal_flag xrender with_xrender)
}

src_install() {
	cabal_src_install

	dodoc etc/xmobar.config etc/xmobar.hs changelog.md readme.org
}
