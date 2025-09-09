#!/bin/bash

source "src/packages/flatpak.sh"

ensure_geforce_now_is_installed () {
  flatpak_ensure_package_is_installed flathub io.github.hmlendea.geforcenow-electron
}
