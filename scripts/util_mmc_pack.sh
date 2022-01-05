function mmc_pack_get {
  $JQ "$@" "$MMC_PACK_JSON_FILE"
}

function mmc_pack_get_component_field_by_uid {
  _uid="$1"; shift
  _field="$1"; shift
  mmc_pack_get ".components[] | select(.uid == \"${_uid}\") | .${_field}"
}

function mmc_update_component {
  uid=$1; shift
  json="$@"
  MMC_PACK_JSON_FILE_NEW="${MMC_PACK_JSON_FILE}.new.$(date +%s)"
  cat "${MMC_PACK_JSON_FILE}" | /opt/homebrew/bin/jq ".components = (del(.components[] | select(.uid==\"${uid}\")) | .components + [${json}])" > "${MMC_PACK_JSON_FILE_NEW}" && mv "${MMC_PACK_JSON_FILE_NEW}" "${MMC_PACK_JSON_FILE}"


}
