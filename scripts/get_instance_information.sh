JAVA_VERSION=
JAVA_ARC=
MINECRAFT_VERSION=
FORGE_VERSION=
FABRIC_VERSION=
LWJGL_VERSION=

function get_instance_information {
  JAVA_VERSION=$($INST_JAVA -version 2>&1 | awk -F '"' '/version/ {print $2}')
  echo "JAVA_VERSION: $JAVA_VERSION"
  JAVA_ARC=$($INST_JAVA -version 2>&1 | grep '64-Bit' &> /dev/null && echo 64 || echo 32)
  echo "JAVA_ARC: $JAVA_ARC"
  MINECRAFT_VERSION=$(mmc_pack_get_component_field_by_uid "net.minecraft" "version")
  echo "MINECRAFT_VERSION: $MINECRAFT_VERSION"
  FORGE_VERSION=$(mmc_pack_get_component_field_by_uid "net.minecraftforge" "version")
  echo "FORGE_VERSION: $FORGE_VERSION"
  FABRIC_IVERSION=$(mmc_pack_get_component_field_by_uid "net.fabricmc.fabric-loader" "version")
  echo "FABRIC_IVERSION: $FABRIC_IVERSION"
  LWJGL_VERSION=$(mmc_pack_get_component_field_by_uid "org.lwjgl" "version")
  test "$LWJGL_VERSION" == "" && {
    LWJGL_VERSION=$(mmc_pack_get_component_field_by_uid "org.lwjgl3" "version")
  } || {
    :
  }
  echo "LWJGL_VERSION: $LWJGL_VERSION"
  echo ""
}

get_instance_information
