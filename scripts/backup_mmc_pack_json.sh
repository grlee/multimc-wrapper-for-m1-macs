function backup_mmc_pack_json {
  test "$MMC_PACK_JSON_FILE" == "" && {
    echo "MMC_PACK_JSON_FILE must be defined" && exitWithCode 1
  }
  local backup_file="${MMC_PACK_JSON_FILE}.$(date +%s).bak"
  echo "Backing up mmc pack json to ${backup_file}"
  cp "${MMC_PACK_JSON_FILE}" "${backup_file}"
  echo ""
}

backup_mmc_pack_json
