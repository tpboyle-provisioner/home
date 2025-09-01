
source "src/packages/dpkg.sh"

DEB_URL="https://download.brother.com/welcome/dlf104033/brscan5-1.3.10-5.amd64.deb"

ensure_scanner_is_installed () {
  if ! scanner_driver_is_installed; then
    install_scanner_driver
  fi
  ensure_scanning_utilities_are_installed
}

install_scanner_driver () {
  dpkg_install_deb_from_url "$DEB_URL"
}

scanner_driver_is_installed () {
  dpkg_package_is_installed brscan5
}

ensure_scanning_utilities_are_installed () {
  apt_ensure_package_is_installed gscan2pdf
}
