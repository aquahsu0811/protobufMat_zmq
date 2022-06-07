cmake_minimum_required(VERSION 3.14)

project(FramePacker LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV REQUIRED)
find_package(cppzmq)
find_package(Threads REQUIRED)

set(ZMQ_LIBRARIES "/usr/local/lib/x86_64-linux-gnu/libzmq.so")

# Define protobuf lib
find_package(Protobuf REQUIRED)
message(STATUS "Protobuf library status:")
message(STATUS "    version: ${Protobuf_VERSION}")
message(STATUS "    libraries: ${Protobuf_LIBRARIES}")
message(STATUS "    include path: ${Protobuf_INCLUDE_DIRS}")

include_directories( ${Protobuf_INCLUDE_DIRS} ${ZMQ_INCLUDE_DIRS} ${Opencv_INCLUDE_DIRS} )
include_directories( "${PROJECT_SOURCE_DIR}/json11" )
include_directories( ${PROJECT_SOURCE_DIR} )

message("PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")
PROTOBUF_GENERATE_CPP(PROTO_SRC PROTO_HEADER msg.proto)
ADD_LIBRARY( proto ${PROTO_SRC} ${PROTO_HEADER} )

add_executable(pub "pub.cpp")
message("ZMQ_LIBRARIES : ${ZMQ_INCLUDE_DIRS}")
target_link_libraries(pub proto
                        ${Protobuf_LIBRARIES}
                        ${ZMQ_LIBRARIES}
                        ${OpenCV_LIBS}
                        )

#build python scrip from proto
PROTOBUF_GENERATE_PYTHON(PROTO_PY msg.proto)
add_custom_target(myTarget ALL DEPENDS ${PROTO_PY})