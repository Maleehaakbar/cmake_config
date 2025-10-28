set (APP_SOURCE
    main.c)
add_executable(final ${APP_SOURCE})
target_link_libraries(final PUBLIC ${LIBRARY_TARGET}
                                    ARR_TARGET
                                    cjson
                                    libzip::zip) 
target_include_directories(final PUBLIC ${CMAKE_BINARY_DIR}/config/include
                                        ${CMAKE_SOURCE_DIR}/external
                                        ${CMAKE_BINARY_DIR}/_deps/libzip-build) 
