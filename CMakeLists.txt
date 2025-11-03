cmake_minimum_required(VERSION 3.5)

project(c_project VERSION 1.0.0 LANGUAGES C)

#compiler settings must be set for any project
set (CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS  ON)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")  #set the absolute path of cmake directory
include(addsubmodule)      #include cmake module file
add_submodule_git("external")#call function
include(doxygendocs)

set(LIBRARY_TARGET LIB)

include(FetchContent)
FetchContent_Declare(
    libzip
    GIT_REPOSITORY  https://github.com/nih-at/libzip.git
    GIT_TAG v1.11.4
    GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(libzip)

get_property(all_targets GLOBAL PROPERTY TARGETS)
message(STATUS "Targets after FetchContent: ${all_targets}")

add_subdirectory(sum)
add_subdirectory(arr)
add_subdirectory(config)
add_subdirectory(src)



#target must be created using add_library/add executable before using target_include_directories etc
#message(STATUS "Crrent directory: ${CMAKE_CURRENT_SOURCE_DIR}") #print messages during configuration 
#cmake --build build --target LIB   #command to just compile a specifoc target not all source files.