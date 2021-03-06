QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    bathymetry.cpp \
    buildings.cpp \
    cfdsolvers/openfoam/openfoam.cpp \
    cfdsolvers/openfoam/systemfiles.cpp \
    floatingbds.cpp \
    initialconalpha.cpp \
    initialconpres.cpp \
    initialconvel.cpp \
    main.cpp \
    mainwindow.cpp \
    materials.cpp \
    meshing.cpp \
    projectsettings.cpp \
    solver.cpp \
    swcfdint.cpp \
    swsolvers/geoclaw/geoclaw.cpp

HEADERS += \
    bathymetry.h \
    buildings.h \
    cfdsolvers/openfoam/openfoam.h \
    floatingbds.h \
    initialconalpha.h \
    initialconpres.h \
    initialconvel.h \
    mainwindow.h \
    materials.h \
    meshing.h \
    projectsettings.h \
    solver.h \
    swcfdint.h \
    swsolvers/geoclaw/geoclaw.h

FORMS += \
    bathymetry.ui \
    buildings.ui \
    floatingbds.ui \
    initialconalpha.ui \
    initialconpres.ui \
    initialconvel.ui \
    mainwindow.ui \
    materials.ui \
    meshing.ui \
    projectsettings.ui \
    solver.ui \
    swcfdint.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc
