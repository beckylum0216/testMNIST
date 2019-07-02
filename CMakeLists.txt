cmake_minimum_required(VERSION 3.10)
project(testMNIST)

set(CMAKE_CXX_STANDARD 14)

set(OpenCV_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../tempOpenCV/build-mingw64)
message(STATUS ${CMAKE_CURRENT_SOURCE_DIR}/../../tempOpenCV/build-mingw64)

find_package(OpenCV REQUIRED)

include_directories(testMNIST ${OpenCV_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_subdirectory(src)

add_executable(testMNIST main.cpp )

target_link_libraries(testMNIST ${OpenCV_LIBS} src)
