#!/bin/bash

source "src/packages/dpkg.sh"
source "src/packages/apt/packages.sh"

DEB_URL="https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.6_all.deb"

ensure_proton_vpn_is_installed () {
  dpkg_ensure_package_is_installed "protonvpn-stable-release" "$DEB_URL"
  apt_ensure_package_is_installed proton-vpn-gnome-desktop
  ensure_additional_proton_vpn_utilities_are_installed
}

ensure_additional_proton_vpn_utilities_are_installed () {
  apt_ensure_packages_are_installed \
    libayatana-appindicator3-1 \
    gir1.2-ayatanaappindicator3-0.1 \
    gnome-shell-extension-appindicator
}
