#!/bin/bash
version=3.12
build=0

if [ ! -d /tmp/cmake_build ] ; then
    mkdir /tmp/cmake_build
fi

cd /tmp/cmake_build

if [ ! -f cmake-$version.$build-Linux-x86_64.sh ] ; then
    wget https://cmake.org/files/v$version/cmake-$version.$build-Linux-x86_64.sh 
fi

if [ ! -d /opt/cmake ] ; then
    sudo mkdir /opt/cmake
fi    
sudo sh cmake-$version.$build-Linux-x86_64.sh --prefix=/opt/cmake --skip-license

if [ ! -d /usr/local/bin ] ; then
   sudo mkdir /usr/local/bin
fi

if [ -f /usr/local/bin/cmake ] ; then
    sudo rm /usr/local/bin/cmake
fi
sudo ln -s /opt/cmake/cmake-$version.$build-Linux-x86_64/bin/cmake /usr/local/bin/cmake

rm -rf /tmp/cmake_build
