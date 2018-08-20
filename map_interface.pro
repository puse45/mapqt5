#-------------------------------------------------
#
# Project created by QtCreator 2018-06-11T11:54:23
#
#-------------------------------------------------

QT += core gui webenginewidgets webchannel webengine

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets webchannel webenginewidgets

TARGET = map_interface
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
            main.cpp \
            map.cpp

HEADERS += \
        map.h

FORMS += \
        map.ui

DISTFILES += \
    google_maps.html \
    js/example.js \
    js/jquery.min.js

RESOURCES += \
    resources.qrc


