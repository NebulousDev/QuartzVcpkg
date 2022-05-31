vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzLib
  REF 176bf37ba37ed77ba44addc25e636ae6d57dffb3
  SHA512 b52cc2760507061b8f72da31d24a2fe1b505bb253161383e12075acabb192f46ebacc24bd0f15a00d64537e5a41c39bd9417de3293da1c9c55df35d97ce5619f
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