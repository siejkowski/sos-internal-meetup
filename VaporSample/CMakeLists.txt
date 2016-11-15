cmake_minimum_required(VERSION 3.6)
project(VaporSample)

add_custom_target(App
        COMMAND swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        SOURCES Package.swift Sources/App/main.swift)

