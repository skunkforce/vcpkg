include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO skunkforce/usb
    REF 84e6c67d079a1b820e7e523f3e041e90971ee97d
    SHA512 36fdd9a639320cdd1ad4ea8b1bc5ac77b4b51feb0540c67be54e07f77ee798b574241230e83dffc8b2fed17c056b73350c926ca5b9153fe7581c69b365d6ee80
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS
)

vcpkg_install_cmake()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/osf-usb)
file(RENAME ${CURRENT_PACKAGES_DIR}/LICENSE 
    ${CURRENT_PACKAGES_DIR}/share/osf-usb/copyright)
file(
    REMOVE_RECURSE
    ${CURRENT_PACKAGES_DIR}/debug/include
    ${CURRENT_PACKAGES_DIR}/debug
    ${CURRENT_PACKAGES_DIR}/lib
    ${CURRENT_PACKAGES_DIR}/debug/lib
    ${CURRENT_PACKAGES_DIR}/include/osf/usb
)


