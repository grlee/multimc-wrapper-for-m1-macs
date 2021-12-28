#!/usr/bin/env bash
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HOMEBREW_ROOT=$1; shift
OLD_PATH=$PATH
PATH=$HOMEBREW_ROOT/bin:$PATH

source "$ROOT_DIR/scripts/util.sh"
source "$ROOT_DIR/scripts/requirements.sh"
check_if_m1_mac && {
  check_required_commands
  source "$ROOT_DIR/scripts/init_variables.sh"
  source "$ROOT_DIR/scripts/check_if_locked.sh"
  source "$ROOT_DIR/scripts/util_mmc_pack.sh"
  source "$ROOT_DIR/scripts/util_mmc_pack.sh"
  source "$ROOT_DIR/scripts/util_instance_cfg.sh"
  source "$ROOT_DIR/scripts/get_instance_information.sh"
  check_if_locked && {
    source "$ROOT_DIR/scripts/backup_mmc_pack_json.sh"
    source "$ROOT_DIR/scripts/run_fixes.sh"
    source "$ROOT_DIR/scripts/touch_lockfile.sh"
  }
}

clear_debugging_traps

echo "PATH is $PATH"
echo ""
echo "CLASSPATH is $CLASSPATH"
echo ""
echo "Executing..."
echo "$@"
echo ""

exec "$@"
