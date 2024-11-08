#!/bin/sh
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
GTK_THEME=$theme /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=gthumb org.gnome.gThumb --new-window "$@"

