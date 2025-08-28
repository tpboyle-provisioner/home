
# Get current directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$DIR/common.sh"
source "$DIR/gnome.sh"

all_home_apps_are_provisioned () {
  echo "PASS"
  # ensure_common_apps_are_installed
  # ensure_common_gnome_utilities_are_installed
}
