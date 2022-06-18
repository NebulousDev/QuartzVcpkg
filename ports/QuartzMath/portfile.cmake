vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzMath
  REF c5d2ce083282f0ffa4c2b7449f15b732b6c1ee11
  SHA512 1b8c179f48413096b2fb10c4c1197ae97368904c29c24cafec3912b3a6454449a41b78a9facf3a0d70be815916386ae48f2cf99e2030752a6e98a1c8daee9fa4
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