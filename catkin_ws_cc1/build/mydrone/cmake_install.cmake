# Install script for directory: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/vasilisskarleas/anaconda3/envs/ros/bin/aarch64-conda-linux-gnu-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mydrone/srv" TYPE FILE FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mydrone/cmake" TYPE FILE FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/catkin_generated/installspace/mydrone-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/include/mydrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/share/roseus/ros/mydrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/share/common-lisp/ros/mydrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/share/gennodejs/ros/mydrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11" -m compileall "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/site-packages" TYPE DIRECTORY FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/catkin_generated/installspace/mydrone.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mydrone/cmake" TYPE FILE FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/catkin_generated/installspace/mydrone-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mydrone/cmake" TYPE FILE FILES
    "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/catkin_generated/installspace/mydroneConfig.cmake"
    "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/catkin_generated/installspace/mydroneConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mydrone" TYPE FILE FILES "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/package.xml")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
