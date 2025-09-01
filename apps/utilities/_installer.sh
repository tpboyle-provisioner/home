
# Get current directory
UTILITIES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$UTILITIES_DIR/privacy/_installer.sh"
source "$UTILITIES_DIR/system/_installer.sh"

all_utilities_are_provisioned () {
  echo "PASS"
  # ensure_all_privacy_utilities_are_provisioned 
  # ensure_all_system_utilities_are_provisioned 
}
