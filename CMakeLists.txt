cmake_minimum_required(VERSION 3.5)

project(c_project C CXX)

#compiler settings must be set for any project
set (CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS  ON)
set(LIBRARY_TARGET LIB)


add_subdirectory(sum)
add_subdirectory(arr)

option(EXCLUDE_SRC "exclude src file" ON)   #option to set boolean values 
if (EXCLUDE_SRC)
    add_subdirectory(src)
endif()

#target must be created using add_library/add executable before using target_include_directories etc
#message(STATUS "Crrent directory: ${CMAKE_CURRENT_SOURCE_DIR}") #print messages during configuration 
#cmake --build build --target LIB   #command to just compile a specifoc target not all source files.