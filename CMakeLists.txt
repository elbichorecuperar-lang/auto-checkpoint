cmake_minimum_required(VERSION 3.21)
project(auto-checkpoint CXX)

find_package(Geode REQUIRED)

add_geode_mod(auto-checkpoint)

target_sources(auto-checkpoint PRIVATE
    src/main.cpp
)
