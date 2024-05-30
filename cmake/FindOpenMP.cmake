
find_package ( OpenMP )

set (PRJ_LIBRARIES)
set (PRJ_INCLUDE_DIRS)
set (PRJ_COMPILE_OPTIONS)

list (APPEND PRJ_INCLUDE_DIRS ${OpenMP_CXX_INCLUDE_DIRS} )
list (APPEND PRJ_LIBRARIES ${OpenMP_CXX_LIBRARIES} )
list (APPEND PRJ_COMPILE_OPTIONS ${OpenMP_CXX_FLAGS} )

function(LINK_OpenMp PROJECT_NAME)
    target_include_directories(${PROJECT_NAME} PUBLIC ${PRJ_INCLUDE_DIRS})
    target_compile_options(${PROJECT_NAME} PUBLIC ${PRJ_COMPILE_OPTIONS})
    target_link_libraries(${PROJECT_NAME} PUBLIC ${PRJ_LIBRARIES})
endfunction()
