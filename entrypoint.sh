#!/bin/bash

git clone "https://github.com/CoolapkLinux/Coolapk-Linux-PKGBUILD.git"
cd pkgbuild
cd "$1"
makepkg -sf --noconfirm
