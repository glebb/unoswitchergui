cache()
# Add more folders to ship with the application, here
folder_01.source = qml/unoswitchergui
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    scriptlauncher.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    scriptlauncher.h

RESOURCES += \
    resources.qrc

defineTest(copyToDestdir) {
    files = $$1

    for(FILE, files) {
        DDIR = /home/antti/src/build-unoswitchergui-Desktop_Qt_5_1_1_GCC_32bit-Debug

        # Replace slashes in paths with backslashes for Windows
        win32:FILE ~= s,/,\\,g
        win32:DDIR ~= s,/,\\,g

        QMAKE_PRE_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR) $$escape_expand(\\n\\t)
    }

    export(QMAKE_PRE_LINK)
}

!mac {
    copyToDestdir($${PWD}/lib/UnotellyCliSwitcher/switch.js)
    copyToDestdir($${PWD}/lib/UnotellyCliSwitcher/switch.cfg)
}

mac {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.6
    UnotellyCliSwitcher.files += lib/UnotellyCliSwitcher/switch.js
    UnotellyCliSwitcher.files += lib/UnotellyCliSwitcher/switch.cfg
    UnotellyCliSwitcher.path = Contents/MacOS
    QMAKE_BUNDLE_DATA += UnotellyCliSwitcher
}
