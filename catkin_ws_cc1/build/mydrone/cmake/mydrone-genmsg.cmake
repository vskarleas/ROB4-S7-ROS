# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mydrone: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/home/vasilisskarleas/anaconda3/envs/ros/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mydrone_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" NAME_WE)
add_custom_target(_mydrone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mydrone" "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mydrone
  "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mydrone
)

### Generating Module File
_generate_module_cpp(mydrone
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mydrone
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mydrone_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mydrone_generate_messages mydrone_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" NAME_WE)
add_dependencies(mydrone_generate_messages_cpp _mydrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mydrone_gencpp)
add_dependencies(mydrone_gencpp mydrone_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mydrone_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mydrone
  "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mydrone
)

### Generating Module File
_generate_module_eus(mydrone
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mydrone
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mydrone_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mydrone_generate_messages mydrone_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" NAME_WE)
add_dependencies(mydrone_generate_messages_eus _mydrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mydrone_geneus)
add_dependencies(mydrone_geneus mydrone_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mydrone_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mydrone
  "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mydrone
)

### Generating Module File
_generate_module_lisp(mydrone
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mydrone
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mydrone_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mydrone_generate_messages mydrone_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" NAME_WE)
add_dependencies(mydrone_generate_messages_lisp _mydrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mydrone_genlisp)
add_dependencies(mydrone_genlisp mydrone_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mydrone_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mydrone
  "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mydrone
)

### Generating Module File
_generate_module_nodejs(mydrone
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mydrone
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mydrone_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mydrone_generate_messages mydrone_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" NAME_WE)
add_dependencies(mydrone_generate_messages_nodejs _mydrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mydrone_gennodejs)
add_dependencies(mydrone_gennodejs mydrone_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mydrone_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mydrone
  "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mydrone
)

### Generating Module File
_generate_module_py(mydrone
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mydrone
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mydrone_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mydrone_generate_messages mydrone_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Documents/ROB4-S7-ROS/catkin_ws_cc1/src/mydrone/srv/alt_warning.srv" NAME_WE)
add_dependencies(mydrone_generate_messages_py _mydrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mydrone_genpy)
add_dependencies(mydrone_genpy mydrone_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mydrone_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mydrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mydrone
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mydrone_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mydrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mydrone
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mydrone_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mydrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mydrone
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mydrone_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mydrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mydrone
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mydrone_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mydrone)
  install(CODE "execute_process(COMMAND \"/home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mydrone\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mydrone
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mydrone_generate_messages_py std_msgs_generate_messages_py)
endif()
