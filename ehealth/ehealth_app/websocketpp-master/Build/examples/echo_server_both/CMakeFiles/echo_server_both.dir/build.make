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
include examples/echo_server_both/CMakeFiles/echo_server_both.dir/depend.make

# Include the progress variables for this target.
include examples/echo_server_both/CMakeFiles/echo_server_both.dir/progress.make

# Include the compile flags for this target's objects.
include examples/echo_server_both/CMakeFiles/echo_server_both.dir/flags.make

examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o: examples/echo_server_both/CMakeFiles/echo_server_both.dir/flags.make
examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o: ../examples/echo_server_both/echo_server_both.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root_linux/Documents/websocketpp-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o"
	cd examples/echo_server_both && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o -c ../../../examples/echo_server_both/echo_server_both.cpp

examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echo_server_both.dir/echo_server_both.cpp.i"
	cd examples/echo_server_both && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E ../../../examples/echo_server_both/echo_server_both.cpp > CMakeFiles/echo_server_both.dir/echo_server_both.cpp.i

examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echo_server_both.dir/echo_server_both.cpp.s"
	cd examples/echo_server_both && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S ../../../examples/echo_server_both/echo_server_both.cpp -o CMakeFiles/echo_server_both.dir/echo_server_both.cpp.s

examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.requires:

.PHONY : examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.requires

examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.provides: examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.requires
	$(MAKE) -f examples/echo_server_both/CMakeFiles/echo_server_both.dir/build.make examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.provides.build
.PHONY : examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.provides

examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.provides.build: examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o


# Object files for target echo_server_both
echo_server_both_OBJECTS = \
"CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o"

# External object files for target echo_server_both
echo_server_both_EXTERNAL_OBJECTS =

bin/echo_server_both: examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o
bin/echo_server_both: examples/echo_server_both/CMakeFiles/echo_server_both.dir/build.make
bin/echo_server_both: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/echo_server_both: /usr/lib/x86_64-linux-gnu/libboost_thread.so
bin/echo_server_both: /usr/lib/x86_64-linux-gnu/libboost_random.so
bin/echo_server_both: /usr/lib/x86_64-linux-gnu/libssl.so
bin/echo_server_both: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/echo_server_both: examples/echo_server_both/CMakeFiles/echo_server_both.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/root_linux/Documents/websocketpp-master/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/echo_server_both"
	cd examples/echo_server_both && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echo_server_both.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/echo_server_both/CMakeFiles/echo_server_both.dir/build: bin/echo_server_both

.PHONY : examples/echo_server_both/CMakeFiles/echo_server_both.dir/build

examples/echo_server_both/CMakeFiles/echo_server_both.dir/requires: examples/echo_server_both/CMakeFiles/echo_server_both.dir/echo_server_both.cpp.o.requires

.PHONY : examples/echo_server_both/CMakeFiles/echo_server_both.dir/requires

examples/echo_server_both/CMakeFiles/echo_server_both.dir/clean:
	cd examples/echo_server_both && $(CMAKE_COMMAND) -P CMakeFiles/echo_server_both.dir/cmake_clean.cmake
.PHONY : examples/echo_server_both/CMakeFiles/echo_server_both.dir/clean

examples/echo_server_both/CMakeFiles/echo_server_both.dir/depend:
	cd /home/root_linux/Documents/websocketpp-master/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/root_linux/Documents/websocketpp-master /home/root_linux/Documents/websocketpp-master/examples/echo_server_both /home/root_linux/Documents/websocketpp-master/Build /home/root_linux/Documents/websocketpp-master/Build/examples/echo_server_both /home/root_linux/Documents/websocketpp-master/Build/examples/echo_server_both/CMakeFiles/echo_server_both.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/echo_server_both/CMakeFiles/echo_server_both.dir/depend

