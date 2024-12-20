# Install script for directory: /Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/src/submarinedrone

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/submarinedrone/srv" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/src/submarinedrone/srv/depth_warning.srv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/submarinedrone/cmake" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/submarinedrone/catkin_generated/installspace/submarinedrone-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/devel/include/submarinedrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/devel/share/roseus/ros/submarinedrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/devel/share/common-lisp/ros/submarinedrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/devel/share/gennodejs/ros/submarinedrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/opt/miniconda3/envs/ros/bin/python3.11" -m compileall "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/devel/lib/python3.11/site-packages/submarinedrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/site-packages" TYPE DIRECTORY FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/devel/lib/python3.11/site-packages/submarinedrone")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/submarinedrone/catkin_generated/installspace/submarinedrone.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/submarinedrone/cmake" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/submarinedrone/catkin_generated/installspace/submarinedrone-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/submarinedrone/cmake" TYPE FILE FILES
    "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/submarinedrone/catkin_generated/installspace/submarinedroneConfig.cmake"
    "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/build/submarinedrone/catkin_generated/installspace/submarinedroneConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/submarinedrone" TYPE FILE FILES "/Users/vasilisskarleas/Library/Mobile Documents/com~apple~CloudDocs/Documents/University Sorbonne/4th year/S7/Computer science for robotics/ROS/catkin_cc/src/submarinedrone/package.xml")
endif()

