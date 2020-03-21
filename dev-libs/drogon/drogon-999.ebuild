EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="A C++14/17 based HTTP web application framework running on Linux/macOS/Unix/Windows"
HOMEPAGE="https://github.com/an-tao/drogon"
SRC_URI=""

EGIT_REPO_URI="https://github.com/an-tao/drogon.git"
EGIT_SUBMODULES=( '*' )

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-libs/jsoncpp
		dev-libs/openssl
		sys-libs/zlib"
DEPEND="${RDEPEND}
		dev-util/cmake"

src_prepare(){
	sed -i -e 's/<json\/json.h>/<jsoncpp\/json\/json.h>/' lib/inc/drogon/HttpRequest.h || die "Sed failed!"
	sed -i -e 's/<json\/json.h>/<jsoncpp\/json\/json.h>/' lib/inc/drogon/HttpResponse.h || die "Sed failed!"
	sed -i -e 's/<json\/json.h>/<jsoncpp\/json\/json.h>/' lib/inc/drogon/plugins/Plugin.h || die "Sed failed!"
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
