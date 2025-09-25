#!/bin/bash


# LOCATE PROJECT ROOT

HOME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$HOME_DIR/apps/_all.sh"

[ -f "$HOME_DIR/conf.sh" ] && source "$HOME_DIR/conf.sh"


# HELPERS

log_header () {
  info "home" "Starting _home_ provisioning..."
}

log_footer () {
  info "home" "..._home_ provisioning complete."
}


# INTERFACE

provision () {
  all_home_apps_are_provisioned
}


# MAIN

main () {
  log_header
  provision
  log_footer
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi

