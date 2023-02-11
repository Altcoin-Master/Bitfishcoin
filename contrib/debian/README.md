
Debian
====================
This directory contains files used to package bitfishcoind/bitfishcoin-qt
for Debian-based Linux systems. If you compile bitfishcoind/bitfishcoin-qt yourself, there are some useful files here.

## bitfishcoin: URI support ##


bitfishcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitfishcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitfishcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitfishcoin128.png` to `/usr/share/pixmaps`

bitfishcoin-qt.protocol (KDE)

