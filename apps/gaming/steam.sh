#!/bin/bash

DEB_URL="https://repo.steampowered.com/steam/archive/stable/steam_latest.deb"

ensure_steam_is_installed () {
  dpkg_ensure_package_is_installed steam-launcher "$DEB_URL"
}
