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

# Include any dependencies generated for this target.
include flashgo/CMakeFiles/flashgo_client.dir/depend.make

# Include the progress variables for this target.
include flashgo/CMakeFiles/flashgo_client.dir/progress.make

# Include the compile flags for this target's objects.
include flashgo/CMakeFiles/flashgo_client.dir/flags.make

flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o: flashgo/CMakeFiles/flashgo_client.dir/flags.make
flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o: /home/rain/ydlidar_ws/src/flashgo/src/flashgo_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o"
	cd /home/rain/ydlidar_ws/build/flashgo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o -c /home/rain/ydlidar_ws/src/flashgo/src/flashgo_client.cpp

flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.i"
	cd /home/rain/ydlidar_ws/build/flashgo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rain/ydlidar_ws/src/flashgo/src/flashgo_client.cpp > CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.i

flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.s"
	cd /home/rain/ydlidar_ws/build/flashgo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rain/ydlidar_ws/src/flashgo/src/flashgo_client.cpp -o CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.s

flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.requires:

.PHONY : flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.requires

flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.provides: flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.requires
	$(MAKE) -f flashgo/CMakeFiles/flashgo_client.dir/build.make flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.provides.build
.PHONY : flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.provides

flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.provides.build: flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o


# Object files for target flashgo_client
flashgo_client_OBJECTS = \
"CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o"

# External object files for target flashgo_client
flashgo_client_EXTERNAL_OBJECTS =

/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: flashgo/CMakeFiles/flashgo_client.dir/build.make
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/libroscpp.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/librosconsole.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/librostime.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /opt/ros/kinetic/lib/libcpp_common.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client: flashgo/CMakeFiles/flashgo_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client"
	cd /home/rain/ydlidar_ws/build/flashgo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flashgo_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
flashgo/CMakeFiles/flashgo_client.dir/build: /home/rain/ydlidar_ws/devel/lib/flashgo/flashgo_client

.PHONY : flashgo/CMakeFiles/flashgo_client.dir/build

flashgo/CMakeFiles/flashgo_client.dir/requires: flashgo/CMakeFiles/flashgo_client.dir/src/flashgo_client.cpp.o.requires

.PHONY : flashgo/CMakeFiles/flashgo_client.dir/requires

flashgo/CMakeFiles/flashgo_client.dir/clean:
	cd /home/rain/ydlidar_ws/build/flashgo && $(CMAKE_COMMAND) -P CMakeFiles/flashgo_client.dir/cmake_clean.cmake
.PHONY : flashgo/CMakeFiles/flashgo_client.dir/clean

flashgo/CMakeFiles/flashgo_client.dir/depend:
	cd /home/rain/ydlidar_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rain/ydlidar_ws/src /home/rain/ydlidar_ws/src/flashgo /home/rain/ydlidar_ws/build /home/rain/ydlidar_ws/build/flashgo /home/rain/ydlidar_ws/build/flashgo/CMakeFiles/flashgo_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : flashgo/CMakeFiles/flashgo_client.dir/depend

