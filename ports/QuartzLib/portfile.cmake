vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NebulousDev/QuartzLib
  REF 0b475788e1cf75bc8ed6ee5b55d4c2137203fda3
  SHA512 8cb117e13d1afd9293b9df7aaa86e6c18c88ac4afcc0c274325c798e219a4a0a9183d0186f5fe588fc0f9f0ee7cce0c181d689f07eebbd8ba1f1b8770f5cce88
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