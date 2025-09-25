#!/bin/bash

source "src/packages/apt/repositories.sh"
source "src/packages/apt/packages.sh"

ensure_keepassxc_is_installed () {
  apt_ensure_ppa_repository_is_installed \
    ppa:phoerious/keepassxc \
    phoerious-ubuntu-keepassxc-plucky.sources
  apt_ensure_package_is_installed keepassxc
}
