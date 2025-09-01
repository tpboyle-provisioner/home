
source "$ROOT_DIR/src/packages/dpkg.sh"
source "$ROOT_DIR/src/packages/apt.sh"

DEB_URL="https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.6_all.deb "

ensure_proton_vpn_is_installed () {
  if ! proton_vpn_is_installed; then
    install_proton_vpn_with_gpg_key
  fi
  ensure_additional_proton_vpn_utilities_are_installed
}

proton_vpn_is_installed () {
  dpkg_package_is_installed proton-vpn
}

install_proton_vpn_with_gpg_key () {
  dpkg_install_deb_from_url
  apt_update
}

ensure_additional_proton_vpn_utilities_are_installed () {
  apt_ensure_package_is_installed \
    proton-vpn-gnome-desktop \
    libayatana-appindicator3-1 \
    gir1.2-ayatanaappindicator3-0.1 \
    gnome-shell-extension-appindicator
}
