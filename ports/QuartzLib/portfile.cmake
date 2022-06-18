vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzLib
  REF aa93f39467756276d4561fed5bef885b0840575c
  SHA512 672aa46ade9b17a11a912962add1a342bcfa4cacb94b884de57723f55416aae09a6e49330af31e462fa9986311e97f3db6961dcfda634c8d28ef2271ac1ee8d4
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