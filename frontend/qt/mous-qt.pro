#-------------------------------------------------
#
# Project created by QtCreator 2012-02-20T22:12:47
#
#-------------------------------------------------

QT       += core gui

TARGET = mous-qt
TEMPLATE = app

INCLUDEPATH += ../sdk
LIBS += -liconv -L./ -Wl,-rpath,./ -lMousCore

macx {
    #QMAKE_CXXFLAGS_RELEASE += -fvisibility=hidden
    #QMAKE_CXXFLAGS_DEBUG += -fvisibility=hidden
    LIBS += -framework
    CONFIG += x86_64
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.6
}


SOURCES += main.cpp\
        MainWindow.cpp \
    CustomHeadTabWidget.cpp \
    MidClickTabBar.cpp \
    DlgListSelect.cpp \
    DlgLoadingMedia.cpp \
    FrmProgressBar.cpp \
    DlgConvertTask.cpp \
    DlgConvertOption.cpp \
    FrmToolBar.cpp \
    FrmTagEditor.cpp \
    SimplePlaylistView.cpp

HEADERS  += MainWindow.h \
    CustomHeadTabWidget.hpp \
    MidClickTabBar.hpp \
    UiHelper.hpp \
    DlgListSelect.h \
    DlgLoadingMedia.h \
    FrmProgressBar.h \
    DlgConvertTask.h \
    DlgConvertOption.h \
    FrmToolBar.h \
    FrmTagEditor.h \
    IPlaylistView.h \
    SimplePlaylistView.h

FORMS    += MainWindow.ui \
    DlgListSelect.ui \
    DlgLoadingMedia.ui \
    FrmProgressBar.ui \
    DlgConvertTask.ui \
    DlgConvertOption.ui \
    FrmToolBar.ui \
    FrmTagEditor.ui

TRANSLATIONS = mous-qt.ts

RESOURCES += \
    AllRes.qrc