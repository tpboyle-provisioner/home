
# Get current directory
SYSTEM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SYSTEM_DIR/gnome.sh"
# source "$SYSTEM_DIR/scanner.sh"

all_system_utilities_are_provisioned () {
  ensure_gnome_utilities_are_installed 
  # ensure_scanner_is_installed
}
