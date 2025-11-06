function(enable_warnings TARGET)
    set (MSVC_WARNINGS
        /W4
        /permissive-)
    
    set (CLANG_WARNINGS
        -Wall
        -Wextra
        -Wpedantic)
    
    set (GCC_WARNINGS ${CLANG_WARNINGS})

    if(${ENABLE_WARNINGS_AS_ERRORS})
        set(MSVC_WARNINGS ${MSVC_WARNINGS} /WX)
        set(CLANG_WARNINGS ${CLANG_WARNINGS} -Werror)
        set(GCC_WARNINGS ${GCC_WARNINGS} -Werror)
    endif()

    if(CMAKE_C_COMPILER_ID MATCHES "MSVC")
        set(PROJECT_WARNINGS ${MSVC_WARNINGS})
    elseif(CMAKE_C_COMPILER_ID MATCHES "CLANG")
        set(PROJECT_WARNINGS ${CLANG_WARNINGS})
    elseif(CMAKE_C_COMPILER_ID MATCHES "GNU")
        set(PROJECT_WARNINGS ${GCC_WARNINGS})
    endif()

    target_compile_options(${TARGET} PRIVATE ${PROJECT_WARNINGS})
    message (STATUS ${WARNINGS})
endfunction(eanble_warnings TARGET ENABLE_AS_ERRORS)
