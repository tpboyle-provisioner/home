#!/bin/bash

source "src/users.sh"

ensure_gnome_utilities_are_installed () {
  apt_ensure_packages_are_installed \
    gnome-tweaks 
  if ! current_user_is_sudo; then
    configure_dock
  fi
}

configure_dock () {
  dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"
  dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height false
  dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed false
}
