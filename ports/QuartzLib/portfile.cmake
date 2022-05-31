vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzLib
  REF ec91c5596602e214215432d443344dc2feec2b72
  SHA512 d531729f4e3e39755c4f5454d4777a117ceba396edda18da8f7a78fd7b9644cf5eebb68f2c8a76c788da6d6484cfbd47893e0a6d9dd9e603ff987c8c3f0c0e80
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)