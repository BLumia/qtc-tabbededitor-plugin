# Tabbed Editor Plugin for QtCreator

based on [@snasoft](https://sourceforge.net/u/snasoft/profile/) and [@trollixx](https://sourceforge.net/u/trollixx/profile/) 's [tabbededitor](https://sourceforge.net/projects/tabbededitor/), with some tweaks to make it works under most recent QtCreator.

## Build:

Assuming you are using Arch Linux:

1. Install `qtcreator-devel`, `cmake` and a C++ toolchain for building
2. `mkdir build && cd build`
3. `cmake ..`
4. `cmake --build .`, then you will get a `lib/qtcreator/plugins/libTabbedEditor.so` which is the plugin file
5. Put the plugin to where Qt can find it, `~/.local/share/data/QtProject/qtcreator/plugins/<qtcreator-version>/` for example.

## Other plugins you may interested...

 - ~~[terminal Plugin for QtCreator](https://github.com/BLumia/qtc-terminal-plugin)~~ won't work under Archlinux for now, and QtCreator will bring official terminal plugin in next major QtCreator release.
