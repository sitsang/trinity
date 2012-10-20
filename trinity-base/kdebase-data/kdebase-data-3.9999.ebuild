# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME="kdebase"
EAPI="4"
KMMODULE="l10n pics applnk"
inherit trinity-meta

DESCRIPTION="Icons, localization data and .desktop files from kdebase. Includes l10n, pics and applnk subdirs."
KEYWORDS=""
IUSE="" # "doc"

pkg_setup() {
#	use doc && KMMODULE+=" doc"
	trinity-meta_pkg_setup;
}