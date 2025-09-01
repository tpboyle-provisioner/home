
# Get current directory
GAMING_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$GAMING_DIR/geforce_now.sh"
source "$GAMING_DIR/steam.sh"

all_gaming_apps_are_provisioned () {
  ensure_geforce_now_is_installed
  ensure_steam_is_installed
}
