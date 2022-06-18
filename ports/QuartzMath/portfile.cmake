vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzMath
  REF 8370f1a6379ae5ae197174d3431fdf07e1ac051d
  SHA512 d713a736d9b6727231546c4e13b3ce08e543273bf884809a019b8d790b1ebe85ca5f7c81841ec9e239806c5e779079b4f5045ac164289bead9abdec3950c2669
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