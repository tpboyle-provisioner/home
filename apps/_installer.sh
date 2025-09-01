
# Get current directory
APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$APPS_DIR/common.sh"
source "$APPS_DIR/gaming/_installer.sh"
source "$APPS_DIR/utilities/_installer.sh"

all_home_apps_are_provisioned () {
  ensure_common_apps_are_installed
  all_utilities_are_provisioned
  all_gaming_apps_are_provisioned
}
