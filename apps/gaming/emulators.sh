#!/bin/bash

source "src/packages/apt/packages.sh"
source "src/packages/flatpak.sh"

ensure_all_emulators_are_provisioned () {
  ensure_dolphin_emulator_is_installed
  ensure_snes9x_emulator_is_installed
  apt_ensure_packages_are_installed \
    retroarch \
    mupen64plus-data \
    mupen64plus-qt
}

ensure_dolphin_emulator_is_installed () {
  flatpak_ensure_package_is_installed flathub org.DolphinEmu.dolphin-emu
}

ensure_snes9x_emulator_is_installed () {
  flatpak_ensure_package_is_installed flathub com.snes9x.Snes9x
}
