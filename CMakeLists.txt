cmake_minimum_required(VERSION 3.10)

project(calculator_project C)

add_library(calculator calculator.c)

add_executable(calculator_app main.c)
target_link_libraries(calculator_app calculator)
