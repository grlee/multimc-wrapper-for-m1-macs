function update_java_objc_bridge_library {
  JAVA_OBJC_BRIDGE_POINT_VERSION="1.1-SNAPSHOT"
  version_gt $JAVA_VERSION 16.999999  && \
    JAVA_OBJC_BRIDGE_FULL_VERSION="${JAVA_OBJC_BRIDGE_POINT_VERSION}-jdk-8" || \
    JAVA_OBJC_BRIDGE_FULL_VERSION="${JAVA_OBJC_BRIDGE_POINT_VERSION}-jdk-17"

  echo "Updating java-objc-bridge lib to ${JAVA_OBJC_BRIDGE_FULL_VERSION}..."
  mkdir -p "${INST_DIR}/libraries"
  cp -f "$LIB_DIR/java-objc-bridge-${JAVA_OBJC_BRIDGE_POINT_VERSION}/java-objc-bridge-${JAVA_OBJC_BRIDGE_FULL_VERSION}.jar" "${INST_DIR}/libraries/java-objc-bridge-${JAVA_OBJC_BRIDGE_FULL_VERSION}.jar"

  patch_file="${INST_DIR}/patches/ca.weblite.java-objc-bridge.json"
  echo "Creating patch file ${patch_file}"
  mkdir -p "${INST_DIR}/patches"
  cat > "${patch_file}" << EOM
{
    "formatVersion": 1,
    "libraries": [
        {
            "name": "ca.weblite:java-objc-bridge:${JAVA_OBJC_BRIDGE_FULL_VERSION}",
            "MMC-hint": "local"
        }
    ],
    "name": "Java-objc Bridge ${JAVA_OBJC_BRIDGE_FULL_VERSION}",
    "releaseTime": "2019-06-24T12:52:52+00:00",
    "type": "release",
    "uid": "ca.weblite.java-objc-bridge",
    "version": "${JAVA_OBJC_BRIDGE_FULL_VERSION}",
    "volatile": true
}
EOM

  mmc_update_component ca.weblite.java-objc-bridge "{\"cachedName\": \"Java-objc Bridge ${JAVA_OBJC_BRIDGE_FULL_VERSION}\",\"cachedVersion\": \"${JAVA_OBJC_BRIDGE_FULL_VERSION}\", \"cachedVolatile\": true, \"uid\": \"ca.weblite.java-objc-bridge\",\"version\": \"${JAVA_OBJC_BRIDGE_FULL_VERSION}\"}"

}

version_gt $MINECRAFT_VERSION 1.15.999999 && {
  update_java_objc_bridge_library
}
