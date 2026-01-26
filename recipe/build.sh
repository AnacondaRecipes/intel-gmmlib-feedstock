#!/bin/bash

mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_FLAGS="-Wformat -Wformat-security" \
    -DCMAKE_CXX_FLAGS="-Wformat -Wformat-security" \
    ..

make -j${CPU_COUNT}
make install

