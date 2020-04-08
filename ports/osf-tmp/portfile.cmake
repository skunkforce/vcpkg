include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO skunkforce/tmp
    REF bef0b95319d8d93e8592a422da3a4939303685ab
    SHA512 3b67ceed6c506602afbdaaaf23dd90a41fd9faee2a327330acfb51840bdbb71d52a5496fb6dc436e2c4a8a3bc2b4b3c3b9850ceb6f6207fa75dca99897595443
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS
)

vcpkg_install_cmake()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/osf-tmp)
file(RENAME ${CURRENT_PACKAGES_DIR}/LICENSE 
    ${CURRENT_PACKAGES_DIR}/share/osf-tmp/copyright)
file(
    REMOVE_RECURSE
    ${CURRENT_PACKAGES_DIR}/debug/include
    ${CURRENT_PACKAGES_DIR}/debug
    ${CURRENT_PACKAGES_DIR}/lib
    ${CURRENT_PACKAGES_DIR}/debug/lib
    ${CURRENT_PACKAGES_DIR}/include/osf/sum_type
)


