#!/bin/bash

source "src/packages/apt.sh"
source "src/packages/snap.sh"

ensure_common_apps_are_installed () {
  apt_ensure_packages_are_installed \
    flatpak \
    gimp \
    vlc
  
  snap_ensure_packages_are_installed \
    discord \
    spotify
  
  snap_ensure_package_is_installed \
    code --classic
}
