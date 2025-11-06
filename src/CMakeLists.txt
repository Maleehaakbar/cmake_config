set (APP_SOURCE
    main.c)
add_executable(${FINAL_TARGET} ${APP_SOURCE})
target_link_libraries(${FINAL_TARGET} PUBLIC ${LIBRARY_TARGET}
                                    ARR_TARGET
                                    cjson
                                    libzip::zip) 
target_include_directories(${FINAL_TARGET} PUBLIC ${CMAKE_BINARY_DIR}/config/include
                                        ${CMAKE_SOURCE_DIR}/external
                                        ${CMAKE_BINARY_DIR}/_deps/libzip-build) 

target_compile_definitions(${FINAL_TARGET} PUBLIC PRINT_ACTIVE)

enable_warnings(${FINAL_TARGET})

