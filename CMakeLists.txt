cmake_minimum_required(VERSION 4.0)
project(Catch2Test)
Include(FetchContent)

FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG        v3.8.1 # or a later release
)

FetchContent_MakeAvailable(Catch2)

add_library(factorial src/factorial.cpp)
target_include_directories(factorial PUBLIC include)

add_executable(tests tests/test.cpp)
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain factorial)

add_executable(main src/main.cpp)
target_link_libraries(main PRIVATE factorial)

include(CTest)
include(Catch)
catch_discover_tests(tests)