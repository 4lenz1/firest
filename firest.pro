TEMPLATE = app

QT += qml quick widgets multimedia

SOURCES += main.cpp \
    myclass.cpp \
    record.cpp

RESOURCES += qml.qrc

CONFIG +=qt
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    myclass.h \
    audiorecorder.h \
    qaudiolevel.h
