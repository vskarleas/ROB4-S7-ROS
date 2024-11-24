# Steps to execute the created packages on this ROS1 workspace

1. get into the workspace by using `cd path_to/catkin_ws`
2. We need to perfom `catkin_make` in order to create the executables for the packages
3. We need to source the executables on **EVERY** new terminal by doing: `cd path_to/catkin_ws/devel ` and then `source setup.zsh` or `source setup.bash` depending your terminal's architecture
4. Then we can go back to the the main folder `cd path_to/catkin_ws`
5. We make sure that there is a `roscore` that is running
6. On the terminal to which we have sourced the executables, we can run the package by doing `rosrun package_name script_that_we_want_to_run.py`
