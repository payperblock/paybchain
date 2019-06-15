@rm -rf build
mkdir build
git submodule update --init --recursive

cd build

sudo apt install -y build-essential cmake libgmp-dev openssl libboost-all-dev libssl-dev llvm-4.0 libusb-1.0 libcurl4-openssl-dev

cmake ..
make -j4
