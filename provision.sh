#!/bin/bash


# LOCATE PROJECT ROOT

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$DIR/apps/_installer.sh"

[ -f "$DIR/conf.sh" ] && source "$DIR/conf.sh"


# HELPERS

log_header () {
  info "home" "---- Starting <<HOME>> provisioning... ----"
}

log_footer () {
  info "home" "---- ...<<HOME>> provisioning complete. ----"
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

