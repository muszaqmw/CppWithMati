CONFIG += console c++11

SOURCES += \
    functions.cpp

HEADERS += \
    functions.hpp

main {
    SOURCES += main.cpp
}

tests {
SOURCES += functionstestsuite.cpp \
           test_main.cpp
LIBS += -lgtest -L/lib/libgtest.so
}


