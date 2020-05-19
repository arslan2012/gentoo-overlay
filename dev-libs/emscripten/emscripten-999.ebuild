EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit python-r1 git-r3

DESCRIPTION="Emscripten SDK http://emscripten.org"
HOMEPAGE="https://github.com/emscripten-core/emsdk"
SRC_URI=""

EGIT_REPO_URI="https://github.com/emscripten-core/emsdk.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-libs/jsoncpp
		dev-libs/openssl
		sys-libs/zlib"
DEPEND="${RDEPEND}
		dev-util/cmake"

src_install(){
	./emsdk install --build=Release sdk-upstream-master-64bit binaryen-master-64bit
	./emsdk activate --build=Release sdk-upstream-master-64bit binaryen-master-64bit
}
