#!/bin/bash

source "src/users.sh"

ensure_gnome_utilities_are_installed () {
  apt_ensure_packages_are_installed \
    gnome-tweaks 
  if ! current_user_is_sudo; then
    configure_dock
    configure_mouse
  fi
}

configure_mouse () {
  dconf write /org/gnome/desktop/peripherals/mouse/natural-scroll $SCROLL_NATURAL
}

configure_dock () {
  dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'$DOCK_POSITION'"
  dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height $DOCK_EXTEND
  dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed $DOCK_FIXED
}
