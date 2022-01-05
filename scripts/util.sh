function set_debugging_traps {
  # exit when any command fails
  set -e
  # keep track of the last executed command
  trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
  # echo an error message before exiting
  trap 'echo "\"${last_command}\" command filed with exit code $?."; set +x' EXIT
}

function clear_debugging_traps {
  # exit when any command fails
  set +x
  # keep track of the last executed command
  trap - DEBUG EXIT
  PATH=$OLD_PATH
}

function exitWithCode {
  clear_debugging_traps
  exit $1
}

function version_gt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" != "$1" && return 0 || return 1; }
function version_lt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" == "$1" && return 0 || return 1; }
function version_eq() { test "$1 "== "$2" && return 0 || return 1; }

set_debugging_traps
