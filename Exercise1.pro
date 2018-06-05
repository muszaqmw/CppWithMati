CONFIG += console
QMAKE_CXXFLAGS += -std=c++17


SUBDIRS += \
    Source \
    Include

SOURCES += \
    Source/functions.cpp

HEADERS += \
    Include/functions.hpp
INCLUDEPATH += \
    Include

main {
    SOURCES += main.cpp
}

tests {
SUBDIRS += \
    Test
SOURCES += \
    Test/functionstestsuite.cpp \
    test_main.cpp \

INCLUDEPATH += \
    googletest/googlemock \
    googletest/googletest \
    googletest/googlemock/include \
    googletest/googletest/include

LIBS += -lgtest -L/lib/libgtest.so
LIBS += -lgmock -L/lib/libgmock.so
}


