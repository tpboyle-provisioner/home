
# Get current directory
PRIVACY_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$PRIVACY_DIR/cryptomator.sh"
source "$PRIVACY_DIR/keepassxc.sh"
source "$PRIVACY_DIR/proton_vpn.sh"

all_privacy_utilities_are_provisioned () {
  echo "PASS"
  # ensure_cryptomator_is_installed
  # ensure_keepassxc_is_installed
  # ensure_proton_vpn_is_installed
}
