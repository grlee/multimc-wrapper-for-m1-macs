function check_if_locked {
  test -f "${LOCKFILE}" && {
    echo "***WARNING***"
    echo "This script was already ran"
    echo "If you still want to run it, delete the following file:"
    echo ""
    echo "rm \"${LOCKFILE}\""
    echo ""
    return 1;
  } || return 0;
}
