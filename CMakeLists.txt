cmake_minimum_required(VERSION 3.0.0)
project(doublyLinkedList VERSION 0.1.0)

include(CTest)
enable_testing()

set(PROJECT_FILES
    main.cpp
    doublyLinkedList.h)

add_executable(${PROJECT_NAME} ${PROJECT_FILES})

