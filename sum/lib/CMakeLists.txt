
set (LIBRARY_SOURCE 
     sum.c)
add_library(${LIBRARY_TARGET} ${LIBRARY_SOURCE})   #create target and include source
target_include_directories(${LIBRARY_TARGET} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})    #include the path to folder/directory that contain header
enable_warnings(${LIBRARY_TARGET})

#optional can also include variable for traget name