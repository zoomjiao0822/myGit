cmake_minimum_required(VERSION 2.8)
project(mysylar)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXSLAGS} -rdynamic -o3 -g -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function")

set(LIBSRC
    server/log.cc
    )

add_library(mysylar SHARED ${LIBSRC})
#add_library(sylar_static STATIC ${LIB_SRC})
#SET_TARGET_PROPERTIES (sylar_static PROPERTIES OUTPUT_NAME "myslar")

add_executable(test tests/test_log.cc)
add_dependencies(test mysylar)
target_link_libraries(test mysylar)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/BIN)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)