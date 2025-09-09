#!/bin/bash

# Get current directory
HOME_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$HOME_APPS_DIR/common.sh"
source "$HOME_APPS_DIR/gaming/_all.sh"
source "$HOME_APPS_DIR/utilities/_all.sh"

all_home_apps_are_provisioned () {
  ensure_common_apps_are_installed
  all_utilities_are_provisioned
  all_gaming_apps_are_provisioned
}
