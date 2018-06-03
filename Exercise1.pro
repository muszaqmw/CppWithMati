CONFIG += console c++11

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

LIBS += -lgtest -L/googletest/gtest.pc
LIBS += -lgmock -L/googletest/gmock.pc


#Biblioteka
}


