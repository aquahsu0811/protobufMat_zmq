# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Downloads/zmqpp/zmq_protobuf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Downloads/zmqpp/zmq_protobuf

# Utility rule file for myTarget.

# Include any custom commands dependencies for this target.
include CMakeFiles/myTarget.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/myTarget.dir/progress.make

CMakeFiles/myTarget: msg_pb2.py

msg_pb2.py: msg.proto
msg_pb2.py: /usr/local/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Downloads/zmqpp/zmq_protobuf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running python protocol buffer compiler on msg.proto"
	/usr/local/bin/protoc --python_out /home/ubuntu/Downloads/zmqpp/zmq_protobuf -I /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf/msg.proto

myTarget: CMakeFiles/myTarget
myTarget: msg_pb2.py
myTarget: CMakeFiles/myTarget.dir/build.make
.PHONY : myTarget

# Rule to build all files generated by this target.
CMakeFiles/myTarget.dir/build: myTarget
.PHONY : CMakeFiles/myTarget.dir/build

CMakeFiles/myTarget.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myTarget.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myTarget.dir/clean

CMakeFiles/myTarget.dir/depend:
	cd /home/ubuntu/Downloads/zmqpp/zmq_protobuf && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf/CMakeFiles/myTarget.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myTarget.dir/depend

