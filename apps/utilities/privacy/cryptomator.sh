#!/bin/bash

source "src/packages/flatpak.sh"

ensure_cryptomator_is_installed () {
  flatpak_ensure_packages_are_installed flathub org.cryptomator.Cryptomator
}
