#!/bin/bash

# Get current directory
HOME_UTILITIES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$HOME_UTILITIES_DIR/privacy/_all.sh"
source "$HOME_UTILITIES_DIR/system/_all.sh"

all_utilities_are_provisioned () {
  all_privacy_utilities_are_provisioned 
  all_system_utilities_are_provisioned
}
