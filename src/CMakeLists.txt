# Add library sources
add_library(factory STATIC
    factory.cpp
)

target_include_directories(factory PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

target_link_libraries(factory PUBLIC
    fmt::fmt
    nlohmann_json::nlohmann_json
)

# Add CLI executable
add_executable(fm
    main.cpp
)

target_link_libraries(fm PRIVATE
    factory
    CLI11::CLI11
    fmt::fmt
)
