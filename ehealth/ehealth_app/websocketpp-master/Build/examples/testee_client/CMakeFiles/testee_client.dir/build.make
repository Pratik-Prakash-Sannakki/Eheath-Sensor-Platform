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
include examples/testee_client/CMakeFiles/testee_client.dir/depend.make

# Include the progress variables for this target.
include examples/testee_client/CMakeFiles/testee_client.dir/progress.make

# Include the compile flags for this target's objects.
include examples/testee_client/CMakeFiles/testee_client.dir/flags.make

examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o: examples/testee_client/CMakeFiles/testee_client.dir/flags.make
examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o: ../examples/testee_client/testee_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root_linux/Documents/websocketpp-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o"
	cd examples/testee_client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testee_client.dir/testee_client.cpp.o -c ../../../examples/testee_client/testee_client.cpp

examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testee_client.dir/testee_client.cpp.i"
	cd examples/testee_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E ../../../examples/testee_client/testee_client.cpp > CMakeFiles/testee_client.dir/testee_client.cpp.i

examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testee_client.dir/testee_client.cpp.s"
	cd examples/testee_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S ../../../examples/testee_client/testee_client.cpp -o CMakeFiles/testee_client.dir/testee_client.cpp.s

examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.requires:

.PHONY : examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.requires

examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.provides: examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.requires
	$(MAKE) -f examples/testee_client/CMakeFiles/testee_client.dir/build.make examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.provides.build
.PHONY : examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.provides

examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.provides.build: examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o


# Object files for target testee_client
testee_client_OBJECTS = \
"CMakeFiles/testee_client.dir/testee_client.cpp.o"

# External object files for target testee_client
testee_client_EXTERNAL_OBJECTS =

bin/testee_client: examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o
bin/testee_client: examples/testee_client/CMakeFiles/testee_client.dir/build.make
bin/testee_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/testee_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
bin/testee_client: /usr/lib/x86_64-linux-gnu/libboost_random.so
bin/testee_client: examples/testee_client/CMakeFiles/testee_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/root_linux/Documents/websocketpp-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/testee_client"
	cd examples/testee_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testee_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/testee_client/CMakeFiles/testee_client.dir/build: bin/testee_client

.PHONY : examples/testee_client/CMakeFiles/testee_client.dir/build

examples/testee_client/CMakeFiles/testee_client.dir/requires: examples/testee_client/CMakeFiles/testee_client.dir/testee_client.cpp.o.requires

.PHONY : examples/testee_client/CMakeFiles/testee_client.dir/requires

examples/testee_client/CMakeFiles/testee_client.dir/clean:
	cd examples/testee_client && $(CMAKE_COMMAND) -P CMakeFiles/testee_client.dir/cmake_clean.cmake
.PHONY : examples/testee_client/CMakeFiles/testee_client.dir/clean

examples/testee_client/CMakeFiles/testee_client.dir/depend:
	cd /home/root_linux/Documents/websocketpp-master/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/root_linux/Documents/websocketpp-master /home/root_linux/Documents/websocketpp-master/examples/testee_client /home/root_linux/Documents/websocketpp-master/Build /home/root_linux/Documents/websocketpp-master/Build/examples/testee_client /home/root_linux/Documents/websocketpp-master/Build/examples/testee_client/CMakeFiles/testee_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/testee_client/CMakeFiles/testee_client.dir/depend
