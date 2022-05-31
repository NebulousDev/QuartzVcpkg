vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzLib
  REF 176bf37ba37ed77ba44addc25e636ae6d57dffb3
  SHA512 acec9e011e31334f51ab09f19ce503094ef9a9e13d51c7b104dbb41a190b5716dc25c034c0ae10f39b30e5a30a0c347cce179c6286ac8522c0e97203347a3145
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