include(vcpkg_common_functions)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO skunkforce/product_type
    REF 9885ec075ff1409bf19daafdd26d1aa3956183eb
    SHA512 a0dfc653b2cdfd737634079df9958ae7a4ab8c0477f4a4dc19ed5ae9915e66dd4ec95464d63f46eac017b96a136f312948897c94d79c21f9686918440bd02b93
    HEAD_REF master
)
vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS
)

vcpkg_install_cmake()

vcpkg_fixup_cmake_targets(CONFIG_PATH lib/cmake/osf-product-type)
file(RENAME ${CURRENT_PACKAGES_DIR}/LICENSE 
    ${CURRENT_PACKAGES_DIR}/share/osf-product-type/copyright)
file(
    REMOVE_RECURSE
    ${CURRENT_PACKAGES_DIR}/debug/include
    ${CURRENT_PACKAGES_DIR}/debug
    ${CURRENT_PACKAGES_DIR}/lib
    ${CURRENT_PACKAGES_DIR}/debug/lib
    ${CURRENT_PACKAGES_DIR}/include/osf/product_type
)


