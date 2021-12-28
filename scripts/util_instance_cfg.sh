function instance_cfg_get_field {
  field="$1"; shift
  grep "^$field=" "$INSTANCE_CFG_FILE" | sed 's/^.*=//g'
}
