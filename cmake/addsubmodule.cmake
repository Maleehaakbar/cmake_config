function(add_submodule_git directory)
    find_package(Git REQUIRED)
    if(NOT EXISTS ${directory}/CMakeLists.txt)
        execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive ${directory}
                        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()
    add_subdirectory(${directory})
    
endfunction(add_submodule_git)
