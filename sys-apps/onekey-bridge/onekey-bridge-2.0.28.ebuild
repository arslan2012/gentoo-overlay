EAPI=7

inherit rpm

DESCRIPTION="OneKey Communication Daemon (written in Go)"
HOMEPAGE="https://github.com/OneKeyHQ/onekey-bridge"
LICENSE="LGPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

SRC_URI="
	amd64? ( https://github.com/OneKeyHQ/onekey-bridge/releases/download/v2.0.28-onekey/onekey-bridge-${PV}-1.x86_64.rpm )
	x86? ( https://github.com/OneKeyHQ/onekey-bridge/releases/download/v2.0.28-onekey/onekey-bridge-${PV}-1.i386.rpm )
"

RDEPEND="
    acct-user/onekeyd
    acct-group/onekeyd"
DEPEND="${RDEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_unpack() {
	rpm_src_unpack
}

src_install() {
	cp -R "${S}/." "${D}/" || die "Install failed!"
	mkdir -p "${D}/var/log/" || die "Install failed!"
	touch "${D}/var/log/onekeyd.log" || die "Install failed!"
	chown onekeyd:onekeyd "${D}/var/log/onekeyd.log" || die "Install failed!"
	chmod 660 "${D}/var/log/onekeyd.log" || die "Install failed!"
}
