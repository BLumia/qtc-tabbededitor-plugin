cmake_minimum_required(VERSION 3.15)

project(TabbedEditor)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(QtCreator COMPONENTS Core TextEditor REQUIRED)
find_package(Qt5 COMPONENTS Widgets REQUIRED)

add_qtc_plugin(TabbedEditor
PLUGIN_DEPENDS
    QtCreator::Core QtCreator::TextEditor
DEPENDS
    Qt5::Widgets
SOURCES
    tabbededitorplugin.cpp
    tabsforeditorswidget.cpp
    tabbededitorplugin.h
    tabbededitorconstants.h
    tabsforeditorswidget.h
)
