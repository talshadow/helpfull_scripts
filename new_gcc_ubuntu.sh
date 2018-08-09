#!/bin/bash
version_hi=7
version_lo=3
full_version=$version_hi.$version_lo

cd /tmp

sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install -y gcc-$version_hi g++-$version_hi
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-$version_hi $version_hi$version_lo --slave /usr/bin/g++ g++ /usr/bin/g++-$version_hi
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
