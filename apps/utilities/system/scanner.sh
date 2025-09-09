#!/bin/bash

source "src/packages/dpkg.sh"

DEB_URL="https://download.brother.com/welcome/dlf104033/brscan5-1.3.10-5.amd64.deb"

ensure_scanner_is_installed () {
  dpkg_ensure_package_is_installed "brscan5" "$DEB_URL"
  ensure_scanning_utilities_are_installed
}

ensure_scanning_utilities_are_installed () {
  apt_ensure_package_is_installed gscan2pdf
}
