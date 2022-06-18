vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzLib
  REF 122ac03949c74f8ad58a4065085f43b58ffb2ebe
  SHA512 db79fdaacd2eff518700f0c9030ae0dfb85be92187cca530896243d2f3120627bd7ea2679f0528809c1a0789f887e207a5e6899d8ef7482e7a68832d75d2d4ee
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