cmake_minimum_required(VERSION 3.13)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(geode.cmake)


setup_geode_mod(elbicho.auto-checkpoint)


add_subdirectory(src)
