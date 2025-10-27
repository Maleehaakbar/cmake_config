set (APP_SOURCE
    main.c)
add_executable(final ${APP_SOURCE})
target_link_libraries(final PUBLIC ${LIBRARY_TARGET}
                                    ARR_TARGET) 
target_include_directories(final PUBLIC ${CMAKE_BINARY_DIR}/config/include)
