cmake_minimum_required(VERSION 3.1)

Project(HelloWorld VERSION 1.0.0)
find_library(COCOA_LIBRARY Cocoa)

set(MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION})

add_executable(${PROJECT_NAME} MACOSX_BUNDLE main.m)
target_link_libraries(${PROJECT_NAME} ${COCOA_LIBRARY})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "HelloWorld")
