# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/root_linux/Desktop/Cmake--Linux/cmake-3.3.1-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/root_linux/Desktop/Cmake--Linux/cmake-3.3.1-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/root_linux/Documents/websocketpp-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/root_linux/Documents/websocketpp-master/Build

# Include any dependencies generated for this target.
include examples/telemetry_client/CMakeFiles/telemetry_client.dir/depend.make

# Include the progress variables for this target.
include examples/telemetry_client/CMakeFiles/telemetry_client.dir/progress.make

# Include the compile flags for this target's objects.
include examples/telemetry_client/CMakeFiles/telemetry_client.dir/flags.make

examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o: examples/telemetry_client/CMakeFiles/telemetry_client.dir/flags.make
examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o: ../examples/telemetry_client/telemetry_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root_linux/Documents/websocketpp-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o"
	cd examples/telemetry_client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o -c ../../../examples/telemetry_client/telemetry_client.cpp

examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/telemetry_client.dir/telemetry_client.cpp.i"
	cd examples/telemetry_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E ../../../examples/telemetry_client/telemetry_client.cpp > CMakeFiles/telemetry_client.dir/telemetry_client.cpp.i

examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/telemetry_client.dir/telemetry_client.cpp.s"
	cd examples/telemetry_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S ../../../examples/telemetry_client/telemetry_client.cpp -o CMakeFiles/telemetry_client.dir/telemetry_client.cpp.s

examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.requires:

.PHONY : examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.requires

examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.provides: examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.requires
	$(MAKE) -f examples/telemetry_client/CMakeFiles/telemetry_client.dir/build.make examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.provides.build
.PHONY : examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.provides

examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.provides.build: examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o


# Object files for target telemetry_client
telemetry_client_OBJECTS = \
"CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o"

# External object files for target telemetry_client
telemetry_client_EXTERNAL_OBJECTS =

bin/telemetry_client: examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o
bin/telemetry_client: examples/telemetry_client/CMakeFiles/telemetry_client.dir/build.make
bin/telemetry_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/telemetry_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
bin/telemetry_client: /usr/lib/x86_64-linux-gnu/libboost_random.so
bin/telemetry_client: examples/telemetry_client/CMakeFiles/telemetry_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/root_linux/Documents/websocketpp-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/telemetry_client"
	cd examples/telemetry_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/telemetry_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/telemetry_client/CMakeFiles/telemetry_client.dir/build: bin/telemetry_client

.PHONY : examples/telemetry_client/CMakeFiles/telemetry_client.dir/build

examples/telemetry_client/CMakeFiles/telemetry_client.dir/requires: examples/telemetry_client/CMakeFiles/telemetry_client.dir/telemetry_client.cpp.o.requires

.PHONY : examples/telemetry_client/CMakeFiles/telemetry_client.dir/requires

examples/telemetry_client/CMakeFiles/telemetry_client.dir/clean:
	cd examples/telemetry_client && $(CMAKE_COMMAND) -P CMakeFiles/telemetry_client.dir/cmake_clean.cmake
.PHONY : examples/telemetry_client/CMakeFiles/telemetry_client.dir/clean

examples/telemetry_client/CMakeFiles/telemetry_client.dir/depend:
	cd /home/root_linux/Documents/websocketpp-master/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/root_linux/Documents/websocketpp-master /home/root_linux/Documents/websocketpp-master/examples/telemetry_client /home/root_linux/Documents/websocketpp-master/Build /home/root_linux/Documents/websocketpp-master/Build/examples/telemetry_client /home/root_linux/Documents/websocketpp-master/Build/examples/telemetry_client/CMakeFiles/telemetry_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/telemetry_client/CMakeFiles/telemetry_client.dir/depend

