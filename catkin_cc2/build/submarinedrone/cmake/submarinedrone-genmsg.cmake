# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "submarinedrone: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/home/vasilisskarleas/anaconda3/envs/ros/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(submarinedrone_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" NAME_WE)
add_custom_target(_submarinedrone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "submarinedrone" "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(submarinedrone
  "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submarinedrone
)

### Generating Module File
_generate_module_cpp(submarinedrone
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submarinedrone
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(submarinedrone_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(submarinedrone_generate_messages submarinedrone_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" NAME_WE)
add_dependencies(submarinedrone_generate_messages_cpp _submarinedrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submarinedrone_gencpp)
add_dependencies(submarinedrone_gencpp submarinedrone_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submarinedrone_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(submarinedrone
  "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submarinedrone
)

### Generating Module File
_generate_module_eus(submarinedrone
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submarinedrone
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(submarinedrone_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(submarinedrone_generate_messages submarinedrone_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" NAME_WE)
add_dependencies(submarinedrone_generate_messages_eus _submarinedrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submarinedrone_geneus)
add_dependencies(submarinedrone_geneus submarinedrone_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submarinedrone_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(submarinedrone
  "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submarinedrone
)

### Generating Module File
_generate_module_lisp(submarinedrone
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submarinedrone
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(submarinedrone_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(submarinedrone_generate_messages submarinedrone_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" NAME_WE)
add_dependencies(submarinedrone_generate_messages_lisp _submarinedrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submarinedrone_genlisp)
add_dependencies(submarinedrone_genlisp submarinedrone_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submarinedrone_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(submarinedrone
  "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submarinedrone
)

### Generating Module File
_generate_module_nodejs(submarinedrone
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submarinedrone
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(submarinedrone_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(submarinedrone_generate_messages submarinedrone_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" NAME_WE)
add_dependencies(submarinedrone_generate_messages_nodejs _submarinedrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submarinedrone_gennodejs)
add_dependencies(submarinedrone_gennodejs submarinedrone_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submarinedrone_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(submarinedrone
  "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submarinedrone
)

### Generating Module File
_generate_module_py(submarinedrone
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submarinedrone
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(submarinedrone_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(submarinedrone_generate_messages submarinedrone_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasilisskarleas/Downloads/catkin_ws/src/submarinedrone/srv/depth_warning.srv" NAME_WE)
add_dependencies(submarinedrone_generate_messages_py _submarinedrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(submarinedrone_genpy)
add_dependencies(submarinedrone_genpy submarinedrone_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS submarinedrone_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submarinedrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/submarinedrone
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(submarinedrone_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submarinedrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/submarinedrone
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(submarinedrone_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submarinedrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/submarinedrone
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(submarinedrone_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submarinedrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/submarinedrone
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(submarinedrone_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submarinedrone)
  install(CODE "execute_process(COMMAND \"/home/vasilisskarleas/anaconda3/envs/ros/bin/python3.11\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submarinedrone\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/submarinedrone
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(submarinedrone_generate_messages_py std_msgs_generate_messages_py)
endif()
