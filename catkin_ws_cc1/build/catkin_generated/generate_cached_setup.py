# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/home/vasilisskarleas/anaconda3/envs/ros/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/home/vasilisskarleas/anaconda3/envs/ros/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel;/home/vasilisskarleas/anaconda3/envs/ros'.split(';'):
        python_path = os.path.join(workspace, 'lib/python3.11/site-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/devel/env.sh')

output_filename = '/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/build/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
