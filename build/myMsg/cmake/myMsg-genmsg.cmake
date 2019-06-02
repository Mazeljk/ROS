# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "myMsg: 1 messages, 0 services")

set(MSG_I_FLAGS "-ImyMsg:/home/parallels/catkin_ws/src/myMsg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(myMsg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" NAME_WE)
add_custom_target(_myMsg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myMsg" "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(myMsg
  "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myMsg
)

### Generating Services

### Generating Module File
_generate_module_cpp(myMsg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myMsg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(myMsg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(myMsg_generate_messages myMsg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" NAME_WE)
add_dependencies(myMsg_generate_messages_cpp _myMsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myMsg_gencpp)
add_dependencies(myMsg_gencpp myMsg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myMsg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(myMsg
  "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myMsg
)

### Generating Services

### Generating Module File
_generate_module_eus(myMsg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myMsg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(myMsg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(myMsg_generate_messages myMsg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" NAME_WE)
add_dependencies(myMsg_generate_messages_eus _myMsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myMsg_geneus)
add_dependencies(myMsg_geneus myMsg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myMsg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(myMsg
  "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myMsg
)

### Generating Services

### Generating Module File
_generate_module_lisp(myMsg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myMsg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(myMsg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(myMsg_generate_messages myMsg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" NAME_WE)
add_dependencies(myMsg_generate_messages_lisp _myMsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myMsg_genlisp)
add_dependencies(myMsg_genlisp myMsg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myMsg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(myMsg
  "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myMsg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(myMsg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myMsg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(myMsg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(myMsg_generate_messages myMsg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" NAME_WE)
add_dependencies(myMsg_generate_messages_nodejs _myMsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myMsg_gennodejs)
add_dependencies(myMsg_gennodejs myMsg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myMsg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(myMsg
  "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myMsg
)

### Generating Services

### Generating Module File
_generate_module_py(myMsg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myMsg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(myMsg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(myMsg_generate_messages myMsg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/catkin_ws/src/myMsg/msg/simple_msg.msg" NAME_WE)
add_dependencies(myMsg_generate_messages_py _myMsg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myMsg_genpy)
add_dependencies(myMsg_genpy myMsg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myMsg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myMsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myMsg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(myMsg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myMsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myMsg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(myMsg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myMsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myMsg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(myMsg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myMsg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myMsg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(myMsg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myMsg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myMsg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myMsg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(myMsg_generate_messages_py std_msgs_generate_messages_py)
endif()
