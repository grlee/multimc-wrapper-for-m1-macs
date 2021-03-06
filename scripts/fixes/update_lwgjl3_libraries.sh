function update_lwgjl_libraries {

  echo "Updating lwjgl lib to 3.3.0..."
  mkdir -p "${INST_DIR}"/libraries
  cp -f $LIB_DIR/lwjgl-release-3.3.0/*.jar "${INST_DIR}/libraries/"
  patch_file="${INST_DIR}/patches/org.lwjgl3.json"
  echo "Creating patch file ${patch_file}"
  mkdir -p "${INST_DIR}/patches"
  cat > "${patch_file}" << EOM
  {
      "formatVersion": 1,
      "libraries": [
        {
          "name": "org.lwjg:lwjgl-glfw:3.3.0",
          "MMC-hint": "local"
        },
        {
          "downloads": {
            "classifiers": {
              "natives-linux": {
                "sha1": "d710d7211b4060f738123a47dcc530329ecb0661",
                "size": 119298,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-glfw/3.3.0/lwjgl-glfw-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "1cc19d82bd2a486cb709a4cf7b4962fe65901199",
                "size": 64208,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-glfw/3.3.0/lwjgl-glfw-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "b2d71cebdfecc512131879573e835211cb47b91f",
                "size": 145363,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-glfw/3.3.0/lwjgl-glfw-3.3.0-natives-windows.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl-glfw:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "ce52faa3fd0c9ed7af45145e94b01eade5fd5daf",
              "size": 36597,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-jemalloc/3.3.0/lwjgl-jemalloc-3.3.0.jar"
            }
          },
          "name": "org.lwjgl:lwjgl-jemalloc:3.3.0"
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "ce52faa3fd0c9ed7af45145e94b01eade5fd5daf",
              "size": 36597,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-jemalloc/3.3.0/lwjgl-jemalloc-3.3.0.jar"
            },
            "classifiers": {
              "natives-linux": {
                "sha1": "2048c1c6d89c8e6120f7bb4d4150f4b11ebc14ac",
                "size": 166526,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-jemalloc/3.3.0/lwjgl-jemalloc-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "8ccf1138c54f1bf67a92317922231cba2a60d596",
                "size": 102286,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-jemalloc/3.3.0/lwjgl-jemalloc-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "9791515338f880a0e12de6b545ebd807dd066fe6",
                "size": 127747,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-jemalloc/3.3.0/lwjgl-jemalloc-3.3.0-natives-windows.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl-jemalloc:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "902dd57b5a46e8a75ee843c2db61f80b4d130d48",
              "size": 88240,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-openal/3.3.0/lwjgl-openal-3.3.0.jar"
            }
          },
          "name": "org.lwjgl:lwjgl-openal:3.3.0"
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "902dd57b5a46e8a75ee843c2db61f80b4d130d48",
              "size": 88240,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-openal/3.3.0/lwjgl-openal-3.3.0.jar"
            },
            "classifiers": {
              "natives-linux": {
                "sha1": "ec44eb3dd863e644160daa570d63f52be5b6c893",
                "size": 476826,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-openal/3.3.0/lwjgl-openal-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "4dd4c751ba019e3626ef3b9b7a8a7e2582f996bb",
                "size": 402236,
                "url": "https://github.com/mjwells2002/minecraft-lwjgl-macos/releases/download/3.3.0/lwjgl-openal-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "0d6e59a987bd196b9a7ce161db41fe1727b0d88f",
                "size": 576873,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-openal/3.3.0/lwjgl-openal-3.3.0-natives-windows.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl-openal:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "a1f395f7758a3abd5aff75fc8a20368ac371631e",
              "size": 921416,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-opengl/3.3.0/lwjgl-opengl-3.3.0.jar"
            }
          },
          "name": "org.lwjgl:lwjgl-opengl:3.3.0"
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "a1f395f7758a3abd5aff75fc8a20368ac371631e",
              "size": 921416,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-opengl/3.3.0/lwjgl-opengl-3.3.0.jar"
            },
            "classifiers": {
              "natives-linux": {
                "sha1": "10f740ad411597e64c0d59d2303a6bbe7e3d79d8",
                "size": 79126,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-opengl/3.3.0/lwjgl-opengl-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "6bac5f116d0c8f64cad7508a08aa512eb28b568a",
                "size": 41648,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-opengl/3.3.0/lwjgl-opengl-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "de52e197709c8d03cb386ed7b3b4ce8b96a339f3",
                "size": 99583,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-opengl/3.3.0/lwjgl-opengl-3.3.0-natives-windows.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl-opengl:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "69becce49e19671fccca33bfb273231055bd9fcf",
              "size": 112376,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-stb/3.3.0/lwjgl-stb-3.3.0.jar"
            }
          },
          "name": "org.lwjgl:lwjgl-stb:3.3.0"
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "69becce49e19671fccca33bfb273231055bd9fcf",
              "size": 112376,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-stb/3.3.0/lwjgl-stb-3.3.0.jar"
            },
            "classifiers": {
              "natives-linux": {
                "sha1": "4c1a538d22f9b4f11857fc9a244b7e8f65c145da",
                "size": 227248,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-stb/3.3.0/lwjgl-stb-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "058db805624ca56d9870346ff49cf386bb00177b",
                "size": 171497,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-stb/3.3.0/lwjgl-stb-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "58994705dc03cca4da31ab850edfae51cfbff74c",
                "size": 256301,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-stb/3.3.0/lwjgl-stb-3.3.0-natives-windows.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl-stb:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "e3bf58d4830e2b35ee7e6f40b1eafd8637c290b8",
              "size": 6768,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0.jar"
            }
          },
          "name": "org.lwjgl:lwjgl-tinyfd:3.3.0"
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "e3bf58d4830e2b35ee7e6f40b1eafd8637c290b8",
              "size": 6768,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0.jar"
            },
            "classifiers": {
              "javadoc": {
                "sha1": "1d95e19d1b205ab4315c0607854615ab73fdbb0f",
                "size": 372019,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0-javadoc.jar"
              },
              "natives-linux": {
                "sha1": "ac199ca754847003ca2207958e2b593b6a849203",
                "size": 45397,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "95822d8d5a816a82ae598d027c076af9f5519794",
                "size": 40895,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "6ea51840d468311df210018d47861ec8ac483794",
                "size": 127930,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0-natives-windows.jar"
              },
              "sources": {
                "sha1": "6b3d800ec29bcf398759f13661f807fc79a1e49b",
                "size": 5530,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl-tinyfd/3.3.0/lwjgl-tinyfd-3.3.0-sources.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl-tinyfd:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "77b0dc0b6a6c82fb47368e73d55e23fdcfcf49a1",
              "size": 568714,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl/3.3.0/lwjgl-3.3.0.jar"
            }
          },
          "name": "org.lwjgl:lwjgl:3.3.0"
        },
        {
          "downloads": {
            "artifact": {
              "sha1": "77b0dc0b6a6c82fb47368e73d55e23fdcfcf49a1",
              "size": 568714,
              "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl/3.3.0/lwjgl-3.3.0.jar"
            },
            "classifiers": {
              "natives-linux": {
                "sha1": "ba27f18455bae3537174ace0af75c3114004b2e0",
                "size": 97064,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl/3.3.0/lwjgl-3.3.0-natives-linux.jar"
              },
              "natives-macos": {
                "sha1": "f4a5d3b1faa210a27b5592bd2ac9ed07b5a8d891",
                "size": 41619,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl/3.3.0/lwjgl-3.3.0-natives-macos-arm64.jar"
              },
              "natives-windows": {
                "sha1": "835e69d483be5ff5f2259ec7802855bd2ff46492",
                "size": 156015,
                "url": "https://repo1.maven.org/maven2/org/lwjgl/lwjgl/3.3.0/lwjgl-3.3.0-natives-windows.jar"
              }
            }
          },
          "name": "org.lwjgl:lwjgl:3.3.0",
          "natives": {
            "linux": "natives-linux",
            "osx": "natives-macos",
            "windows": "natives-windows"
          }
        }
      ],
      "name": "LWJGL 3",
      "releaseTime": "2019-06-24T12:52:52+00:00",
      "type": "release",
      "uid": "org.lwjgl3",
      "version": "3.3.0",
      "volatile": true,
      "time": "2021-12-04T16:30:49.859Z"
    }

EOM
  mmc_update_component org.lwjgl3 '{"cachedName": "LWJGL 3","cachedVersion": "3.3.0", "cachedVolatile": true,"dependencyOnly": true, "uid": "org.lwjgl3","version": "3.3.0"}'
  echo ""

}

# Update LWJGL3 to modified version of 3.3.0
version_gt $LWJGL_VERSION 2.999 && {
  update_lwgjl_libraries
}
