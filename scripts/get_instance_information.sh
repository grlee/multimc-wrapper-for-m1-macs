JAVA_VERSION=
JAVA_ARC=
JAVA_DISTRO=Oracle
MINECRAFT_VERSION=
FORGE_VERSION=
FABRIC_VERSION=
LWJGL_VERSION=

function is_java_distro {
  distro_name=$1
  test "$($INST_JAVA -version 2>&1 | grep $1)" != "" && return 0 || return 1
}

function get_instance_information {
  JAVA_VERSION=$($INST_JAVA -version 2>&1 | awk -F '"' '/version/ {print $2}')
  echo "JAVA_VERSION: $JAVA_VERSION"

  is_java_distro AdoptOpenJDK && JAVA_DISTRO=AdoptOpenJDK
  is_java_distro Corretto && JAVA_DISTRO=Corretto
  is_java_distro Temurin && JAVA_DISTRO=Temurin
  is_java_distro Zulu && JAVA_DISTRO=Zulu
  is_java_distro GraalVM && JAVA_DISTRO=GraalVM
  echo "JAVA_DISTRO: $JAVA_DISTRO"

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
