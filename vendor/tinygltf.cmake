if(TARGET mbgl-vendor-tinygltf)
    return()
endif()

add_library(
    mbgl-vendor-tinygltf INTERFACE
)

target_include_directories(
    mbgl-vendor-tinygltf SYSTEM
    INTERFACE ${CMAKE_CURRENT_LIST_DIR}/tinygltf
)

set_target_properties(
    mbgl-vendor-tinygltf
    PROPERTIES
        INTERFACE_MAPBOX_NAME "Tiny glTF"
        INTERFACE_MAPBOX_URL "https://github.com/syoyo/tinygltf"
        INTERFACE_MAPBOX_AUTHOR "Syoyo Fujita"
        INTERFACE_MAPBOX_LICENSE ${CMAKE_CURRENT_LIST_DIR}/tinygltf/LICENSE
)
