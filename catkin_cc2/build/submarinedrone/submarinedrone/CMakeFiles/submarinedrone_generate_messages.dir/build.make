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
CMAKE_SOURCE_DIR = /home/vasilisskarleas/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vasilisskarleas/catkin_ws/build

# Utility rule file for submarinedrone_generate_messages.

# Include any custom commands dependencies for this target.
include submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/compiler_depend.make

# Include the progress variables for this target.
include submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/progress.make

submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/codegen:
.PHONY : submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/codegen

submarinedrone_generate_messages: submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/build.make
.PHONY : submarinedrone_generate_messages

# Rule to build all files generated by this target.
submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/build: submarinedrone_generate_messages
.PHONY : submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/build

submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/clean:
	cd /home/vasilisskarleas/catkin_ws/build/submarinedrone/submarinedrone && $(CMAKE_COMMAND) -P CMakeFiles/submarinedrone_generate_messages.dir/cmake_clean.cmake
.PHONY : submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/clean

submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/depend:
	cd /home/vasilisskarleas/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vasilisskarleas/catkin_ws/src /home/vasilisskarleas/catkin_ws/src/submarinedrone/submarinedrone /home/vasilisskarleas/catkin_ws/build /home/vasilisskarleas/catkin_ws/build/submarinedrone/submarinedrone /home/vasilisskarleas/catkin_ws/build/submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : submarinedrone/submarinedrone/CMakeFiles/submarinedrone_generate_messages.dir/depend

