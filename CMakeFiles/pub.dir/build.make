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

# Include any dependencies generated for this target.
include CMakeFiles/pub.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pub.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pub.dir/flags.make

CMakeFiles/pub.dir/pub.cpp.o: CMakeFiles/pub.dir/flags.make
CMakeFiles/pub.dir/pub.cpp.o: pub.cpp
CMakeFiles/pub.dir/pub.cpp.o: CMakeFiles/pub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Downloads/zmqpp/zmq_protobuf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pub.dir/pub.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pub.dir/pub.cpp.o -MF CMakeFiles/pub.dir/pub.cpp.o.d -o CMakeFiles/pub.dir/pub.cpp.o -c /home/ubuntu/Downloads/zmqpp/zmq_protobuf/pub.cpp

CMakeFiles/pub.dir/pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub.dir/pub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Downloads/zmqpp/zmq_protobuf/pub.cpp > CMakeFiles/pub.dir/pub.cpp.i

CMakeFiles/pub.dir/pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub.dir/pub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Downloads/zmqpp/zmq_protobuf/pub.cpp -o CMakeFiles/pub.dir/pub.cpp.s

# Object files for target pub
pub_OBJECTS = \
"CMakeFiles/pub.dir/pub.cpp.o"

# External object files for target pub
pub_EXTERNAL_OBJECTS =

pub: CMakeFiles/pub.dir/pub.cpp.o
pub: CMakeFiles/pub.dir/build.make
pub: libproto.a
pub: /usr/local/lib/libprotobuf.so
pub: /usr/local/lib/x86_64-linux-gnu/libzmq.so
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_dnn.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_gapi.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_highgui.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_ml.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_objdetect.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_photo.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_stitching.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_video.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_videoio.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_imgcodecs.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_calib3d.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_features2d.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_flann.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_imgproc.so.4.3.0
pub: /opt/intel/openvino_2020.3.341/opencv/lib/libopencv_core.so.4.3.0
pub: CMakeFiles/pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Downloads/zmqpp/zmq_protobuf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pub.dir/build: pub
.PHONY : CMakeFiles/pub.dir/build

CMakeFiles/pub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pub.dir/clean

CMakeFiles/pub.dir/depend:
	cd /home/ubuntu/Downloads/zmqpp/zmq_protobuf && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf /home/ubuntu/Downloads/zmqpp/zmq_protobuf/CMakeFiles/pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pub.dir/depend

