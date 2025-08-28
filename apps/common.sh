
source "src/packages/apt.sh"

ensure_common_apps_are_installed () {
  apt_ensure_packages_are_installed \
    flatpak \
    gimp \
    vlc \
    steam
  
  snap_ensure_packages_are_installed \
    discord \
    spotify
  
  snap_ensure_package_is_installed \
    code --classic
}
