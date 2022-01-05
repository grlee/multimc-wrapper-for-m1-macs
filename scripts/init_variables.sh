#set -x
test "$ROOT_DIR" == "" && {
  echo "ROOT_DIR must be defined" && exitWithCode 1
}
LIB_DIR=$ROOT_DIR/lib

MMC_PACK_JSON_FILE=
INSTANCE_CFG_FILE=
LOCKFILE=

function check_for_env_var() {
  env_var="$1"
  test "${!env_var}" == "" && {
    echo "Missing environment variable $1" && exitWithCode 1
  } || {
    :
#    echo "$env_var :"
#    echo ${!env_var}
  }
}

function init_variables() {
  check_for_env_var "INST_NAME"
  check_for_env_var "INST_ID"
  check_for_env_var "INST_DIR"
  check_for_env_var "INST_MC_DIR"
  check_for_env_var "INST_JAVA"
  check_for_env_var "INST_JAVA_ARGS"

  echo "You can rerun this command using:"
  echo ""
  echo -n "INST_NAME='${INST_NAME}' "
  echo -n "INST_ID='${INST_ID}' "
  echo -n "INST_DIR='${INST_DIR}' "
  echo -n "INST_MC_DIR='${INST_MC_DIR}' "
  echo -n "INST_JAVA='${INST_JAVA}' "
  echo -n "INST_JAVA_ARGS='${INST_JAVA_ARGS}' "

  echo "'$ROOT_DIR/wrapper.sh' '$HOMEBREW_ROOT'"
  echo ""


  MMC_PACK_JSON_FILE="${INST_DIR}/mmc-pack.json"
  test -f "${MMC_PACK_JSON_FILE}" || {
    echo "Could not find file ${MMC_PACK_JSON_FILE}"
    echo "Instance is not multiMC instance" && exitWithCode 1
  }
  echo "Found pack file ${MMC_PACK_JSON_FILE}"
  echo ""

  INSTANCE_CFG_FILE="${INST_DIR}/instance.cfg"
  test -f "${INSTANCE_CFG_FILE}" || {
    echo "Could not find file ${INSTANCE_CFG_FILE}"
    echo "Instance is not multiMC instance" && exitWithCode 1
  }
  echo "Found instance config file ${INSTANCE_CFG_FILE}"
  echo ""

  LOCKFILE="${INST_DIR}/multimc-lwjgl3-hack-for-m1.lck"
}


init_variables
