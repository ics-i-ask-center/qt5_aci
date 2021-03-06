#!/bin/bash
# This script installs:
#	Boost 1.69.0
#	DSI-Studio
#	MRtrix3
# Requires:
#	qt5-qtbase-devel
#	qt5-qtsvg-devel
#	eigen3-devel
#	etc...

# Please change the path before run the script (optional):
BASE=$PWD

# Run only if system is Centos 7
if [[ $(cat /etc/os-release | grep CentOS-7) ]] ; then
  # Devtoolset-8 causes issue
  source /opt/rh/devtoolset-7/enable
fi

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
#sed -i -e "s/moc = 'moc'/moc = 'moc-qt5'/g" configure
#sed -i -e "s/qmake = 'qmake'/qmake = 'qmake-qt5'/g" configure
#sed -i -e "s/rcc = 'rcc'/rcc = 'rcc-qt5'/g" configure
./configure
./build

cd ${BASE}/sw
mkdir dsistudio
cd dsistudio

# INSTALL DSI Studio
# Use March 8th commit -> Qt version issue (check out https://github.com/frankyeh/DSI-Studio/issues/34)
function version_gt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" != "$1"; }
qtver=`qmake-qt5 --version | grep -Eow 'Qt version [^ ]+' | awk '{ print $3 }'`
qt512=5.12.2

#if version_gt $qt512 $qtver ; then
#  # Qt version < 5.12.2
#  git clone -b master https://github.com/frankyeh/DSI-Studio.git
#  cd DSI-Studio
#  # 2019/1/14 commit
#  git checkout f0a5c95
#  cd ..
#  mv DSI-Studio src
#else
#  # Qt version >= 5.12.2
  git clone -b master https://github.com/frankyeh/DSI-Studio.git src
  # commit from 7/24
#  git checkout 9b8ba3e
#fi

wget -nc https://github.com/frankyeh/TIPL/zipball/master
unzip master
mv frankyeh-TIPL-* tipl
mv tipl src
mkdir build
cd build
qmake ../src/ && make
cd ..
# below link is dead
#wget -nc https://www.dropbox.com/s/ew3rv0jrqqny2dq/dsi_studio_64.zip?dl=1
#mv dsi_studio_64.zip?dl=1 dsi_studio_64.zip
#unzip dsi_studio_64.zip
#cd dsi_studio_64
#find . -name '*.dll' -exec rm {} \;
#rmdir iconengines imageformats platforms printsupport
#rm dsi_studio.exe
#cp ../build/dsi_studio .




