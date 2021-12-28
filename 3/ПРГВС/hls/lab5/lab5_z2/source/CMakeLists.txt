cmake_minimum_required(VERSION 3.8)
project(HybridTest LANGUAGES C)

set(CMAKE_CXX_FLAGS "${CMALE_CXX_FLAGS} -std=c11 -Wall")

set(SRC_FILE "lab5_z2_test_modify.c" "lab5_z2.c")

add_executable(${PROJECT_NAME} ${SRC_FILE})

