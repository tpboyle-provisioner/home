#!/bin/bash

source "src/packages/apt/packages.sh"
source "src/packages/flatpak.sh"
source "src/packages/snap.sh"

ensure_common_apps_are_installed () {
  apt_ensure_packages_are_installed \
    flatpak \
    gimp \
    libreoffice \
    transmission \
    htop \
    vlc
  
  snap_ensure_packages_are_installed \
    discord \
    spotify
  
  snap_ensure_package_is_installed \
    code --classic
  
  flatpak_ensure_packages_are_installed \
    com.usebottles.bottles
}
