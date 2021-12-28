cmake_minimum_required(VERSION 3.8)
project(HybridTest LANGUAGES C)

set(CMAKE_CXX_FLAGS "${CMALE_CXX_FLAGS} -std=c11 -Wall")

set(SRC_FILE "course_prj_modify.c" "course_prj.c")

add_executable(${PROJECT_NAME} ${SRC_FILE})

