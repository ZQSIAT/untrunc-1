#-------------------------------------------------
#
# Project created by QtCreator 2012-10-28T12:50:54
#
#-------------------------------------------------

QT -= core
QT -= gui

TARGET = untrunc
CONFIG += console
CONFIG -= -qt app_bundle
CONFIG += debug

GIT_VERSION = $$system(git describe --always --dirty --abbrev=7)
DEFINES += UNTR_VERSION=\\\"$$GIT_VERSION\\\"

TEMPLATE = app

SOURCES += main.cpp \
	atom.cpp \
	mp4.cpp \
	file.cpp \
	track.cpp \
	codec.cpp \
	common.cpp \
	nal.cpp \
	sps-info.cpp \
	nal-slice.cpp \
	avc-config.cpp

HEADERS += \
	atom.h \
	mp4.h \
	file.h \
	track.h \
	codec.h \
	common.h \
	nal.h \
	sps-info.h \
	nal-slice.h \
	avc-config.h

LIBS += -lavformat -lavcodec -lavutil
