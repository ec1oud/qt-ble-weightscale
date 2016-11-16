TEMPLATE = app
TARGET = weightscale

QT += widgets bluetooth svg

HEADERS += weightscale.h \
    trayicon.h

SOURCES += weightscale.cpp \
    main.cpp \
    trayicon.cpp

RESOURCES += \
    resources.qrc
