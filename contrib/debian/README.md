
Debian
====================
This directory contains files used to package ipsd/ips-qt
for Debian-based Linux systems. If you compile ipsd/ips-qt yourself, there are some useful files here.

## ips: URI support ##


ips-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ips-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ipsqt binary to `/usr/bin`
and the `../../share/pixmaps/ips128.png` to `/usr/share/pixmaps`

ips-qt.protocol (KDE)

