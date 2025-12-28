# Fetch Catch2 for unit testing
FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG        v3.5.2
)
FetchContent_MakeAvailable(Catch2)

# Add test executable
add_executable(test_placeholder
    test_placeholder.cpp
)

target_link_libraries(test_placeholder PRIVATE
    factory
    Catch2::Catch2WithMain
)

# Register test with CTest
add_test(NAME placeholder_test COMMAND test_placeholder)
