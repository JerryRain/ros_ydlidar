# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rain/ydlidar_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rain/ydlidar_ws/build

# Utility rule file for testmsg_generate_messages_cpp.

# Include the progress variables for this target.
include testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/progress.make

testmsg/CMakeFiles/testmsg_generate_messages_cpp: /home/rain/ydlidar_ws/devel/include/testmsg/Testmag.h


/home/rain/ydlidar_ws/devel/include/testmsg/Testmag.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/rain/ydlidar_ws/devel/include/testmsg/Testmag.h: /home/rain/ydlidar_ws/src/testmsg/msg/Testmag.msg
/home/rain/ydlidar_ws/devel/include/testmsg/Testmag.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from testmsg/Testmag.msg"
	cd /home/rain/ydlidar_ws/src/testmsg && /home/rain/ydlidar_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/rain/ydlidar_ws/src/testmsg/msg/Testmag.msg -Itestmsg:/home/rain/ydlidar_ws/src/testmsg/msg -p testmsg -o /home/rain/ydlidar_ws/devel/include/testmsg -e /opt/ros/kinetic/share/gencpp/cmake/..

testmsg_generate_messages_cpp: testmsg/CMakeFiles/testmsg_generate_messages_cpp
testmsg_generate_messages_cpp: /home/rain/ydlidar_ws/devel/include/testmsg/Testmag.h
testmsg_generate_messages_cpp: testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/build.make

.PHONY : testmsg_generate_messages_cpp

# Rule to build all files generated by this target.
testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/build: testmsg_generate_messages_cpp

.PHONY : testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/build

testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/clean:
	cd /home/rain/ydlidar_ws/build/testmsg && $(CMAKE_COMMAND) -P CMakeFiles/testmsg_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/clean

testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/depend:
	cd /home/rain/ydlidar_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rain/ydlidar_ws/src /home/rain/ydlidar_ws/src/testmsg /home/rain/ydlidar_ws/build /home/rain/ydlidar_ws/build/testmsg /home/rain/ydlidar_ws/build/testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testmsg/CMakeFiles/testmsg_generate_messages_cpp.dir/depend
