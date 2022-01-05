JQ=
function check_if_m1_mac {
  test -f "/usr/sbin/sysctl" || {
    echo "/usr/sbin/sysctl not found.  Is this a Mac?" && clear_debugging_traps && return 1
  }

  CPU_TYPE=$(sysctl -n machdep.cpu.brand_string)
  [[ "$CPU_TYPE" == "Apple M"* ]] || {
    echo "$CPU_TYPE is not supported by this script" && clear_debugging_traps && return 1
  }

  return 0
}

function check_required_commands {
  JQ="$(/usr/bin/command -v jq)"
  echo "Found $JQ"
  [[ "$JQ" == "" ]] && {
    echo "Use homebrew to install jq for json parsing and make sure you pass the root directory of homebrew to this script" && exitWithCode 1
  } || {
    :
  }
}
