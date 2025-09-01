
# Get current directory
HOME_PRIVACY_UTILITIES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$HOME_PRIVACY_UTILITIES_DIR/cryptomator.sh"
source "$HOME_PRIVACY_UTILITIES_DIR/keepassxc.sh"
source "$HOME_PRIVACY_UTILITIES_DIR/proton_vpn.sh"

all_privacy_utilities_are_provisioned () {
  ensure_cryptomator_is_installed
  ensure_keepassxc_is_installed
  ensure_proton_vpn_is_installed
}
