#!/bin/bash

source "src/packages/apt/packages.sh"
source "src/packages/apt/repositories.sh"

ensure_mkusb_is_provisioned () {
  if ! mkusb_is_installed; then
    install_mkusb
  fi
}

mkusb_is_installed () {
  test -f /usr/local/bin/mkusb
}

install_mkusb () {
  apt_ensure_canonical_repository_is_enabled universe
  apt_ensure_ppa_repository_is_installed ppa:mkusb/ppa mkusb-.*?.sources
  apt_ensure_packages_are_installed \
    mkusb \
    usb-pack-efi
}
