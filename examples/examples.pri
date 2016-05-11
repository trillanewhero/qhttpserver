include(../qhttpserver.pri)

QT += network
QT -= gui

CONFIG += debug

INCLUDEPATH += ../../src
LIBS += -L../../bin/$${SPEC}

win32 {
    debug: LIBS += -lqhttpserverd
    else: LIBS += -lqhttpserver
} else {
    LIBS += -lqhttpserver
    QMAKE_LFLAGS += -Wl,-rpath=../../bin/$${SPEC} -lqhttpserver
}
