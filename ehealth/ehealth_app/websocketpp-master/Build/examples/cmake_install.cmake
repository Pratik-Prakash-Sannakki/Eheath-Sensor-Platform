# Install script for directory: /home/root_linux/Documents/websocketpp-master/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/echo_server_tls/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/echo_server/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/telemetry_server/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/echo_server_both/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/testee_client/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/sip_client/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/print_server/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/utility_client/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/debug_server/cmake_install.cmake")
  include("/home/root_linux/Documents/websocketpp-master/Build/examples/telemetry_client/cmake_install.cmake")

endif()

