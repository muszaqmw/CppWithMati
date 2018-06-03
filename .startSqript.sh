#!/bin/bash
cmake googletest/ -DBUILD_SHARED_LIBS=ON
make googletest/
cp -a googletest/googlemock/libgmock.so googletest/googlemock/gtest/libgtest.so /usr/lib/
