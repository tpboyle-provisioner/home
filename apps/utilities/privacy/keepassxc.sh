
ensure_keepassxc_is_installed () {
  apt_ppa_is_present ppa.launchpad.net/phoerious/keepassxc
  apt_repo_is_present ppa:phoerious/keepassxc
  apt_ensure_package_is_installed keepassxc
}
