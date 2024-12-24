# ROS1 Course - Robotics Operating System

## Course Overview

### English

This course, led by Ludovic Saint-Bauzel in 2021, provides an in-depth understanding of the Robotics Operating System (ROS1). It covers the essential concepts, tools, and techniques necessary to implement robotic systems, from basic communication infrastructure to complex robot functionalities. Topics include ROS architecture, message passing, service management, visualization tools, and integration with external libraries such as Gazebo, OpenCV, and MoveIt. The course is ideal for anyone interested in learning how to use ROS to build and control robots.

### French

Ce cours, dirigé par Ludovic Saint-Bauzel en 2021, offre une compréhension approfondie du système d'exploitation robotique (ROS1). Il couvre les concepts, les outils et les techniques essentiels nécessaires à la mise en œuvre de systèmes robotiques, de l'infrastructure de communication de base aux fonctionnalités robotisées complexes. Les sujets incluent l'architecture ROS, la transmission de messages, la gestion des services, les outils de visualisation, et l'intégration avec des bibliothèques externes telles que Gazebo, OpenCV et MoveIt. Ce cours est idéal pour toute personne souhaitant apprendre à utiliser ROS pour construire et contrôler des robots.

## Key Topics

- **ROS Architecture**: Meta-OS, Communication infrastructure, Distributed system
- **Robot-Specific Features**: Geometry, Kinematics, Localization, Mapping
- **Integration with Tools**: Gazebo, OpenCV, PCL, MoveIt
- **ROS Tools**: CLI tools like `rosrun`, `roslaunch`, `rosbag`, `rqt`
- **Message Passing**: Publish/Subscribe model, services, topics, and messages
- **Visualization**: RViz, tf for robot state visualization
- **ROS1 to ROS2 Transition**: Differences in C++ and Python versions, build systems, and communication frameworks

## Installation and Setup

### English

1. Install ROS1 (Noetic recommended).
2. Set up your workspace:
   ```bash
   source /opt/ros/noetic/setup.bash
   mkdir -p ~/catkin_ws/src
   cd ~/catkin_ws/src
   catkin_init_workspace
   cd ..
   catkin_make
   source devel/setup.bash
   ```

### French

1. Installez ROS1 (version Noetic recommandée).
2. Configurez votre espace de travail :
   ```bash
   source /opt/ros/noetic/setup.bash
   mkdir -p ~/catkin_ws/src
   cd ~/catkin_ws/src
   catkin_init_workspace
   cd ..
   catkin_make
   source devel/setup.bash
   ```

## Tools and Commands

- **ROS Shell**: `roscd`, `rosls`, `rosrun`, `roslaunch`
- **Message Management**: `rosmsg`, `rosservice`, `rostopic`
- **Node Management**: `rosnode`, `rosparam`
- **Visualization Tools**: `rqt_graph`, `rqt_plot`, `rviz`

## Use Cases

- **Teleoperation**: Example with `turtlesim` for controlling a robot using keyboard input.
- **Sensor Integration**: Using `rosbag` for recording and playing back sensor data.
- **Localization and Mapping**: Integration of SLAM and localization using `gmapping` and `amcl`.

## Community and Resources

- **ROS Wiki**: [ros.org Wiki](http://wiki.ros.org)
- **Bug Tracking**: [ROS Bug Tracker](https://github.com/ros/rosdistro/issues)
- **Mailing Lists**: ROS Users and ROS Developers mailing lists
- **ROS Answers**: [rosanswers.ros.org](https://answers.ros.org)
- **Blog**: [ROS Blog](https://www.ros.org/blog/)

## Transition from ROS1 to ROS2

The course also discusses the key differences between ROS1 and ROS2, including changes in build systems (`catkin_make` to `ament_make`), communication frameworks, and support for newer C++ standards.

---

## License

This course content is licensed under the [Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/).
