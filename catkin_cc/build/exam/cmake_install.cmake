# Install script for directory: /Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/src/exam

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/miniconda3/envs/ros/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/exam/catkin_generated/installspace/exam.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exam/cmake" TYPE FILE FILES
    "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/exam/catkin_generated/installspace/examConfig.cmake"
    "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/exam/catkin_generated/installspace/examConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exam" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/src/exam/package.xml")
endif()

