# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI="5"
TRINITY_MODULE_NAME="kdebase"

inherit trinity-meta

DESCRIPTION="The Trinity Control Center"
KEYWORDS="~amd64 ~x86"
IUSE="samba logitech-mouse ieee1394"

SLOT="$TRINITY_VER"

DEPEND="x11-libs/libX11
	x11-libs/libXrender
	x11-libs/libXcursor
	x11-libs/libXrandr
	samba? ( net-fs/samba )
	logitech-mouse? ( virtual/libusb:0 )
	ieee1394? ( sys-libs/libraw1394 )
	>=trinity-base/libkonq-${PV}:${SLOT}
	>=trinity-base/kicker-${PV}:${SLOT}"

RDEPEND="${DEPEND}
	sys-apps/usbutils
	>=trinity-base/kcminit-${PV}:${SLOT}
	>=trinity-base/kdebase-data-${PV}:${SLOT}
	>=trinity-base/kdesu-${PV}:${SLOT}
	>=trinity-base/khelpcenter-${PV}:${SLOT}
	>=trinity-base/khotkeys-${PV}:${SLOT}"

TSM_EXTRACT_ALSO="kicker/ kwin/ kdesktop/ klipper/ kxkb/"

src_configure() {
	mycmakeargs=(
		-DWITH_XCURSOR=ON
		-DWITH_XRANDR=ON
		-DWITH_XRENDER=ON
		-DWITH_USBIDS=/usr/share/misc/usb.ids
		$(cmake-utils_use_with samba SAMBA)
		$(cmake-utils_use_with logitech-mouse LIBUSB)
		$(cmake-utils_use_with ieee1394 LIBRAW1394)
	)

	trinity-meta_src_configure
}
