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
CMAKE_SOURCE_DIR = /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build

# Utility rule file for mydrone_generate_messages_py.

# Include any custom commands dependencies for this target.
include mydrone/CMakeFiles/mydrone_generate_messages_py.dir/compiler_depend.make

# Include the progress variables for this target.
include mydrone/CMakeFiles/mydrone_generate_messages_py.dir/progress.make

mydrone/CMakeFiles/mydrone_generate_messages_py: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/_alt_warning.py
mydrone/CMakeFiles/mydrone_generate_messages_py: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/__init__.py

/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/__init__.py: /home/vasilisskarleas/anaconda3/envs/ros/lib/genpy/genmsg_py.py
/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/__init__.py: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/_alt_warning.py
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python srv __init__.py for mydrone"
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone && ../catkin_generated/env_cached.sh /home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11 /home/vasilisskarleas/anaconda3/envs/ros/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv --initpy

/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/_alt_warning.py: /home/vasilisskarleas/anaconda3/envs/ros/lib/genpy/gensrv_py.py
/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/_alt_warning.py: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python code from SRV mydrone/alt_warning"
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone && ../catkin_generated/env_cached.sh /home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11 /home/vasilisskarleas/anaconda3/envs/ros/share/genpy/cmake/../../../lib/genpy/gensrv_py.py /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv -Istd_msgs:/home/vasilisskarleas/anaconda3/envs/ros/share/std_msgs/cmake/../msg -p mydrone -o /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv

mydrone/CMakeFiles/mydrone_generate_messages_py.dir/codegen:
.PHONY : mydrone/CMakeFiles/mydrone_generate_messages_py.dir/codegen

mydrone_generate_messages_py: mydrone/CMakeFiles/mydrone_generate_messages_py
mydrone_generate_messages_py: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/__init__.py
mydrone_generate_messages_py: /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/lib/python3.11/site-packages/mydrone/srv/_alt_warning.py
mydrone_generate_messages_py: mydrone/CMakeFiles/mydrone_generate_messages_py.dir/build.make
.PHONY : mydrone_generate_messages_py

# Rule to build all files generated by this target.
mydrone/CMakeFiles/mydrone_generate_messages_py.dir/build: mydrone_generate_messages_py
.PHONY : mydrone/CMakeFiles/mydrone_generate_messages_py.dir/build

mydrone/CMakeFiles/mydrone_generate_messages_py.dir/clean:
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone && $(CMAKE_COMMAND) -P CMakeFiles/mydrone_generate_messages_py.dir/cmake_clean.cmake
.PHONY : mydrone/CMakeFiles/mydrone_generate_messages_py.dir/clean

mydrone/CMakeFiles/mydrone_generate_messages_py.dir/depend:
	cd /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone /home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/mydrone/CMakeFiles/mydrone_generate_messages_py.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : mydrone/CMakeFiles/mydrone_generate_messages_py.dir/depend

