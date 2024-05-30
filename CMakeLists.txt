cmake_minimum_required(VERSION 3.10)

project(libbsc VERSION 1.0 LANGUAGES C CXX)

add_compile_definitions(_LARGEFILE64_SOURCE)
add_compile_definitions(_FILE_OFFSET_BITS=64)
SET(TFLAGS "-O3 -fomit-frame-pointer -fstrict-aliasing -ffast-math \
    -mavx2 -fopenmp -DLIBBSC_OPENMP_SUPPORT -DNDEBUG \
    -DLIBBSC_SORT_TRANSFORM_SUPPORT -DLIBBSC_ALLOW_UNALIGNED_ACCESS")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TFLAGS}")

#
include(cmake/FindOpenMP.cmake)
file(GLOB_RECURSE SRC_LIBBSC libbsc/*.h libbsc/*.c libbsc/*.cc libbsc/*.cpp)

add_library(libbsc
    ${SRC_LIBBSC}
    )

add_executable(bsc
    bsc.cpp
    )
LINK_OpenMp(libbsc)
LINK_OpenMp(bsc)
target_link_libraries(bsc PUBLIC libbsc)
