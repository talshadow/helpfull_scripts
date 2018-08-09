#!/bin/bash
version=6.0
oldversion=3.8

cd /tmp

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main"
sudo apt-get update
sudo apt-get install -y clang clang-tidy clang-format clang-$version clang-tidy-$version clang-format--$version

sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-$oldversion 1000
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-$version 100
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-$oldversion 1000
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-$version 100
sudo update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-$version 100
sudo update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-$version 100
sudo update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-$oldversion 1000
sudo update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-$oldversion 1000
sudo update-alternatives --config clang
sudo update-alternatives --config clang++
sudo update-alternatives --config clang-tidy
sudo update-alternatives --config clang-format
