#Known variables
# JAVA_VERSION, JAVA_ARC FORGE_VERSION, FABRIC_VERSION, LWJGL_VERSION

function run_fixes {
  echo "Looking for fixes for minecraft version $MINECRAFT_VERSION"
  echo ""

  MIN_MINECRAFT_VERSION_THAT_NEEDS_FIXING=1.9 # based on limited testing
  version_lt $MINECRAFT_VERSION $MIN_MINECRAFT_VERSION_THAT_NEEDS_FIXING && {
    echo "MINECRAFT_VERSION $MINECRAFT_VERSION is less than $MIN_MINECRAFT_VERSION_THAT_NEEDS_FIXING and needs no fixes" && return 0
  } || {
    :
  }

  # fixes related to https://www.thecrosseroads.net/2021/12/minecraft-on-apple-silicon/
  source "${ROOT_DIR}/scripts/fixes/update_java_objc_bridge_library.sh"
  source "${ROOT_DIR}/scripts/fixes/update_lwgjl3_libraries.sh"

}

run_fixes
