# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
TRINITY_MODULE_NAME="kdegraphics"

inherit trinity-meta

DESCRIPTION="Trinity screen gamma values kcontrol module"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=trinity-base/kcontrol-${PV}:${SLOT}"
RDEPEND="${DEPEND}"
