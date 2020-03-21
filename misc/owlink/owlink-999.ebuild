EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="An open Apple Wireless Direct Link (AWDL) implementation written in C https://owlink.org"
HOMEPAGE="https://github.com/seemoo-lab/owl"
SRC_URI=""

EGIT_REPO_URI="https://github.com/seemoo-lab/owl.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-libs/libnl
		dev-libs/libev
		net-libs/libpcap"
DEPEND="${RDEPEND}
		dev-util/cmake"

src_prepare(){
	cmake-utils_src_prepare
}

src_configure(){
	cmake-utils_src_configure
}

src_compile(){
	cmake-utils_src_compile
}

src_install(){
	cmake-utils_src_install
}
