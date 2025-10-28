set (ARR_SOURCE 
    arr.c)

add_library(ARR_TARGET ${ARR_SOURCE})       #add sources to project
target_include_directories(ARR_TARGET PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})   #add headers to path