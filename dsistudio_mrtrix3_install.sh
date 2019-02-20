# This script installs:
#	Boost 1.69.0
#	DSI-Studio
#	MRtrix3
# Requires:
#	qt5-qtbase-devel
#	qt5-qtsvg-devel
#	etc...

# Please change the path before run the script (optional):
BASE=$PWD

source /opt/rh/devtoolset-8/enable
mkdir -p ${BASE}/sw
cd ${BASE}/sw


# INSTALL BOOST (NOT NEEDED -> http://dsi-studio.labsolver.org/dsi-studio-download/compile-dsi-studio-on-windows-mac-linux)
#wget -nc https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz
#tar -xf boost_1_69_0.tar.gz
#cd boost_1_69_0
#./bootstrap.sh
#./b2 install

#cd ${BASE}/sw
#rm boost_1_69_0.tar.gz
#rm -rf boost_1_69_0

cd ${BASE}/sw

# INSTALL MRtrix3
git clone https://github.com/MRtrix3/mrtrix3.git
cd mrtrix3
sed -i -e "s/moc = 'moc'/moc = 'moc-qt5'/g" configure
sed -i -e "s/qmake = 'qmake'/qmake = 'qmake-qt5'/g" configure
sed -i -e "s/rcc = 'rcc'/rcc = 'rcc-qt5'/g" configure
./configure
./build

cd ${BASE}/sw
mkdir dsistudio
cd dsistudio

# INSTALL DSI Studio
git clone -b master https://github.com/frankyeh/DSI-Studio.git src
wget -nc https://github.com/frankyeh/TIPL/zipball/master
unzip master
mv frankyeh-TIPL-* tipl
mv tipl src
mkdir build
cd build
qmake-qt5 ../src/ && make
cd ..
wget -nc https://www.dropbox.com/s/ew3rv0jrqqny2dq/dsi_studio_64.zip?dl=1
mv dsi_studio_64.zip?dl=1 dsi_studio_64.zip
unzip dsi_studio_64.zip
cd dsi_studio_64
find . -name '*.dll' -exec rm {} \;
rmdir iconengines imageformats platforms printsupport
rm dsi_studio.exe
cp ../build/dsi_studio .




