cmake_minimum_required(VERSION 3.25)
project(auto-checkpoint CXX)

find_package(Geode REQUIRED)

add_geode_mod(auto-checkpoint)
target_sources(${GEODE_MOD_NAME} PRIVATE src/main.cpp)
