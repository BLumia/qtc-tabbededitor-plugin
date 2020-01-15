DEFINES += TABBEDEDITOR_LIBRARY

# TabbedEditor files

SOURCES += \
    tabbededitorplugin.cpp \
    tabsforeditorswidget.cpp

HEADERS += tabbededitorplugin.h \
        tabbededitorconstants.h \
    tabsforeditorswidget.h

LIBS += -L/usr/lib/x86_64-linux-gnu/qtcreator -L/usr/lib/x86_64-linux-gnu/qtcreator/plugins
#LIBS += -L/home/wzc/Source/build-qtermwidget-unknown-Debug

# Qt Creator linking

## Either set the IDE_SOURCE_TREE when running qmake,
## or set the QTC_SOURCE environment variable, to override the default setting
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = $$(QTC_SOURCE)
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = "/home/wzc/Temp/qtcreator-4.8.2"

## Either set the IDE_BUILD_TREE when running qmake,
## or set the QTC_BUILD environment variable, to override the default setting
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = "/usr/lib/x86_64-linux-gnu/qtcreator"

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on Mac
USE_USER_DESTDIR = yes

PROVIDER = Pineapple

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = TabbedEditor
QTC_LIB_DEPENDS += \
    # nothing here at this time

QTC_PLUGIN_DEPENDS += \
    coreplugin \
    texteditor

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include($$IDE_SOURCE_TREE/src/qtcreatorplugin.pri)

RESOURCES += \
    resources/res.qrc

