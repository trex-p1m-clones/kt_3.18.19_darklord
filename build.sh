make mrproper
rm -rf toolchain && git clone https://bitbucket.org/UBERTC/aarch64-linux-android-4.9-kernel toolchain
export CROSS_COMPILE="${PWD}/toolchain/bin/aarch64-linux-android-"
export ARCH=arm64 
export SUBARCH=arm64
rm -rf out && mkdir -p out
make O=out clean
make O=out mrproper
make O=out yl6735m_65u_ov_m_defconfig
make O=out -j$(nproc --all)

