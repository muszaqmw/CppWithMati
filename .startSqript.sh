#!/bin/bash
cd googletest
cmake -DBUILD_SHARED_LIBS=ON
make
cp -a googlemock/libgmock.so googlemock/gtest/libgtest.so /usr/lib/
