# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/vasilisskarleas/anaconda3/envs/ros/bin/cmake

# The command to remove a file.
RM = /home/vasilisskarleas/anaconda3/envs/ros/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build

# Utility rule file for _mydrone_generate_messages_check_deps_alt_warning.

# Include any custom commands dependencies for this target.
include mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/compiler_depend.make

# Include the progress variables for this target.
include mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/progress.make

mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning:
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build/mydrone && ../catkin_generated/env_cached.sh /home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11 /home/vasilisskarleas/anaconda3/envs/ros/share/genmsg/cmake/../../../lib/genmsg/genmsg_check_deps.py mydrone /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/src/mydrone/srv/alt_warning.srv 

mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/codegen:
.PHONY : mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/codegen

_mydrone_generate_messages_check_deps_alt_warning: mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning
_mydrone_generate_messages_check_deps_alt_warning: mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/build.make
.PHONY : _mydrone_generate_messages_check_deps_alt_warning

# Rule to build all files generated by this target.
mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/build: _mydrone_generate_messages_check_deps_alt_warning
.PHONY : mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/build

mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/clean:
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build/mydrone && $(CMAKE_COMMAND) -P CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/cmake_clean.cmake
.PHONY : mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/clean

mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/depend:
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/src /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/src/mydrone /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build/mydrone /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_control/build/mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : mydrone/CMakeFiles/_mydrone_generate_messages_check_deps_alt_warning.dir/depend
