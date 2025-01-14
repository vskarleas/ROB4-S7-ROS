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

# Utility rule file for submarinedrone_generate_messages_py.

# Include any custom commands dependencies for this target.
include submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/compiler_depend.make

# Include the progress variables for this target.
include submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/progress.make

submarinedrone/CMakeFiles/submarinedrone_generate_messages_py: /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/_depth_warning.py
submarinedrone/CMakeFiles/submarinedrone_generate_messages_py: /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/__init__.py

/home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/__init__.py: /home/vasilisskarleas/anaconda3/envs/ros/lib/genpy/genmsg_py.py
/home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/__init__.py: /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/_depth_warning.py
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/vasilisskarleas/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python srv __init__.py for submarinedrone"
	cd /home/vasilisskarleas/catkin_ws/build/submarinedrone && ../catkin_generated/env_cached.sh /home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11 /home/vasilisskarleas/anaconda3/envs/ros/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv --initpy

/home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/_depth_warning.py: /home/vasilisskarleas/anaconda3/envs/ros/lib/genpy/gensrv_py.py
/home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/_depth_warning.py: /home/vasilisskarleas/catkin_ws/src/submarinedrone/srv/depth_warning.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/vasilisskarleas/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python code from SRV submarinedrone/depth_warning"
	cd /home/vasilisskarleas/catkin_ws/build/submarinedrone && ../catkin_generated/env_cached.sh /home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11 /home/vasilisskarleas/anaconda3/envs/ros/share/genpy/cmake/../../../lib/genpy/gensrv_py.py /home/vasilisskarleas/catkin_ws/src/submarinedrone/srv/depth_warning.srv -Istd_msgs:/home/vasilisskarleas/anaconda3/envs/ros/share/std_msgs/cmake/../msg -p submarinedrone -o /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv

submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/codegen:
.PHONY : submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/codegen

submarinedrone_generate_messages_py: submarinedrone/CMakeFiles/submarinedrone_generate_messages_py
submarinedrone_generate_messages_py: /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/__init__.py
submarinedrone_generate_messages_py: /home/vasilisskarleas/catkin_ws/devel/lib/python3.11/site-packages/submarinedrone/srv/_depth_warning.py
submarinedrone_generate_messages_py: submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/build.make
.PHONY : submarinedrone_generate_messages_py

# Rule to build all files generated by this target.
submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/build: submarinedrone_generate_messages_py
.PHONY : submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/build

submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/clean:
	cd /home/vasilisskarleas/catkin_ws/build/submarinedrone && $(CMAKE_COMMAND) -P CMakeFiles/submarinedrone_generate_messages_py.dir/cmake_clean.cmake
.PHONY : submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/clean

submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/depend:
	cd /home/vasilisskarleas/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vasilisskarleas/catkin_ws/src /home/vasilisskarleas/catkin_ws/src/submarinedrone /home/vasilisskarleas/catkin_ws/build /home/vasilisskarleas/catkin_ws/build/submarinedrone /home/vasilisskarleas/catkin_ws/build/submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : submarinedrone/CMakeFiles/submarinedrone_generate_messages_py.dir/depend

