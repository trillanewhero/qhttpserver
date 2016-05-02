SPEC = $$basename(QMAKESPEC)

isEmpty(PREFIX):PREFIX = /usr/local
isEmpty(LIBDIR):LIBDIR = $${PREFIX}/bin/$${SPEC}
isEmpty(INCLUDEDIR):INCLUDEDIR = $${PREFIX}/include

MOC_DIR       = .moc/$${SPEC}
OBJECTS_DIR   = .obj/$${SPEC}

include(custom.pri)
