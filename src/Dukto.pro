#-------------------------------------------------
#
# Project created by QtCreator 2010-06-30T19:14:12
#
#-------------------------------------------------

QT       += core gui network

TARGET = Dukto
TEMPLATE = app

SOURCES += \ 
    peer.cpp \
    oslib.cpp \
    mainwindow.cpp \
    main.cpp \
    duktoprotocol.cpp \
    textdialog.cpp \
    listwidgetpeeritem.cpp \
    listwidgetlogitem.cpp \
    ecwin7.cpp

HEADERS  += \ 
    peer.h \
    oslib.h \
    mainwindow.h \
    duktoprotocol.h \
    textdialog.h \
    listwidgetpeeritem.h \
    listwidgetlogitem.h \
    ecwin7.h

FORMS    += \ 
    mainwindow.ui \
    textdialog.ui

RESOURCES += \
    resources.qrc

RC_FILE = dukto.rc

win32 {
	QMAKE_LFLAGS += -static-libgcc
	LIBS += libole32 libWs2_32
	CONFIG += static
}

unix {
	LIBS = -L/usr/lib/ -lpcre -lexpat -lxcb -lXau -lXdmcp
	CONFIG += static
}

macx {
	LIBS = -framework CoreFoundation
	ICON = ../res/icon/macosx.icns
}

include(3rd/qtsingleapplication/qtsingleapplication.pri)