include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO skunkforce/ftmp
    REF e8f08e8265ae908aded6e913a62ed4efa8b8d008
    SHA512 e8f362be0ce039af402fc3ab1a3f57a033a428e044471af21623299f77381b35cc52a4640b0415c7505a94b58b42fa7242cdb6e9c05293564a9a501ba1f69e43
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS
)

vcpkg_install_cmake()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/osf-ftmp)
file(RENAME ${CURRENT_PACKAGES_DIR}/LICENSE 
    ${CURRENT_PACKAGES_DIR}/share/osf-ftmp/copyright)
file(
    REMOVE_RECURSE
    ${CURRENT_PACKAGES_DIR}/debug/include
    ${CURRENT_PACKAGES_DIR}/debug
    ${CURRENT_PACKAGES_DIR}/lib
    ${CURRENT_PACKAGES_DIR}/debug/lib
    ${CURRENT_PACKAGES_DIR}/include/osf/ftmp
)


