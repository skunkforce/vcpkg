include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO skunkforce/sum_type
    REF 9ef9cbaf048b9289dfaf0cb5a2fed47c5e7a67e6
    SHA512 9d0376915fc2c92e66c74de55aa397f73d021903a85b683f7c925f5238cdf463a8204dddfe7dcade34397faf987b2ee9f5c78c4aae861f3865bf4bf1fb4f0a3d
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS
)

vcpkg_install_cmake()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/osf-sum-type)
file(RENAME ${CURRENT_PACKAGES_DIR}/LICENSE 
    ${CURRENT_PACKAGES_DIR}/share/osf-sum-type/copyright)
file(
    REMOVE_RECURSE
    ${CURRENT_PACKAGES_DIR}/debug/include
    ${CURRENT_PACKAGES_DIR}/debug
    ${CURRENT_PACKAGES_DIR}/lib
    ${CURRENT_PACKAGES_DIR}/debug/lib
    ${CURRENT_PACKAGES_DIR}/include/osf/sum_type
)


