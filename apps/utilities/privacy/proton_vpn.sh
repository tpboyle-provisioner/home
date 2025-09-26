#!/bin/bash

source "src/packages/dpkg.sh"
source "src/packages/apt/packages.sh"

DEB_URL="https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.8_all.deb"
APT_PACKAGE_LIST_PATH="/var/lib/apt/lists/repo.protonvpn.com_debian_dists_stable_InRelease"

ensure_proton_vpn_is_installed () {
  dpkg_ensure_package_is_installed "protonvpn-stable-release" "$DEB_URL"
  ensure_proton_vpn_package_list_has_been_updated
  apt_ensure_package_is_installed proton-vpn-gnome-desktop
  ensure_additional_proton_vpn_utilities_are_installed
}

ensure_proton_vpn_package_list_has_been_updated () {
  if [[ ! -e "$APT_PACKAGE_LIST_PATH" ]]; then
    sudo apt update
  fi
}

ensure_additional_proton_vpn_utilities_are_installed () {
  apt_ensure_packages_are_installed \
    libayatana-appindicator3-1 \
    gir1.2-ayatanaappindicator3-0.1 \
    gnome-shell-extension-appindicator
}
