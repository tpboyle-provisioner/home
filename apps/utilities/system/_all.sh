
# Get current directory
HOME_SYSTEM_UTILITIES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$HOME_SYSTEM_UTILITIES_DIR/gnome.sh"
# source "$HOME_SYSTEM_UTILITIES_DIR/scanner.sh"

all_system_utilities_are_provisioned () {
  ensure_gnome_utilities_are_installed 
  # ensure_scanner_is_installed
}
