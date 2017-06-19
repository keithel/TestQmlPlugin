TEMPLATE = lib
TARGET = TestQmlPlugin
QT += qml quick
CONFIG += plugin c++11

TARGET = $$qtLibraryTarget($$TARGET)

DESTDIR = imports/TestQmlPlugin
uri = com.l3t.TestQmlPlugin

# Input
SOURCES += \
    src/testqmlplugin_plugin.cpp \
    src/myrectangle.cpp

HEADERS += \
    src/testqmlplugin_plugin.h \
    src/myrectangle.h

DISTFILES = qml/qmldir \
            qml/MyRectangle.qml

# Is this really needed? This just copies the qmldir file from source to the base of the build directory.
# When install happens, it copies the qmldir file from the sources.
!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qml/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmlmodule.files = qml/qmldir \
    qml/MyRectangle.qml

unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    #installPath = /tmp/qml/$$replace(uri, \\., /)
    message("installPath: " $$installPath)
    qmlmodule.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmlmodule
}
