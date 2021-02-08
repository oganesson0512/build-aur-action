#!/bin/bash

git clone "https://github.com/CoolapkLinux/Coolapk-Linux-PKGBUILD.git"
cd pkgbuild
for pkg in `cat ../need-update`
do
  cd "${pkg}"
  makepkg -sf --noconfirm
  cd ..
done
