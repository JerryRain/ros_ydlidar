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
include csm/sm/CMakeFiles/test_json_ld.dir/depend.make

# Include the progress variables for this target.
include csm/sm/CMakeFiles/test_json_ld.dir/progress.make

# Include the compile flags for this target's objects.
include csm/sm/CMakeFiles/test_json_ld.dir/flags.make

csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o: csm/sm/CMakeFiles/test_json_ld.dir/flags.make
csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o: /home/rain/ydlidar_ws/src/csm/sm/apps/test_json_ld.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o"
	cd /home/rain/ydlidar_ws/build/csm/sm && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_json_ld.dir/apps/test_json_ld.o   -c /home/rain/ydlidar_ws/src/csm/sm/apps/test_json_ld.c

csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_json_ld.dir/apps/test_json_ld.i"
	cd /home/rain/ydlidar_ws/build/csm/sm && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rain/ydlidar_ws/src/csm/sm/apps/test_json_ld.c > CMakeFiles/test_json_ld.dir/apps/test_json_ld.i

csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_json_ld.dir/apps/test_json_ld.s"
	cd /home/rain/ydlidar_ws/build/csm/sm && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rain/ydlidar_ws/src/csm/sm/apps/test_json_ld.c -o CMakeFiles/test_json_ld.dir/apps/test_json_ld.s

csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.requires:

.PHONY : csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.requires

csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.provides: csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.requires
	$(MAKE) -f csm/sm/CMakeFiles/test_json_ld.dir/build.make csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.provides.build
.PHONY : csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.provides

csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.provides.build: csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o


# Object files for target test_json_ld
test_json_ld_OBJECTS = \
"CMakeFiles/test_json_ld.dir/apps/test_json_ld.o"

# External object files for target test_json_ld
test_json_ld_EXTERNAL_OBJECTS =

csm/sm/test_json_ld: csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o
csm/sm/test_json_ld: csm/sm/CMakeFiles/test_json_ld.dir/build.make
csm/sm/test_json_ld: /home/rain/ydlidar_ws/devel/lib/libcsm-static.a
csm/sm/test_json_ld: csm/sm/CMakeFiles/test_json_ld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_json_ld"
	cd /home/rain/ydlidar_ws/build/csm/sm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_json_ld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
csm/sm/CMakeFiles/test_json_ld.dir/build: csm/sm/test_json_ld

.PHONY : csm/sm/CMakeFiles/test_json_ld.dir/build

csm/sm/CMakeFiles/test_json_ld.dir/requires: csm/sm/CMakeFiles/test_json_ld.dir/apps/test_json_ld.o.requires

.PHONY : csm/sm/CMakeFiles/test_json_ld.dir/requires

csm/sm/CMakeFiles/test_json_ld.dir/clean:
	cd /home/rain/ydlidar_ws/build/csm/sm && $(CMAKE_COMMAND) -P CMakeFiles/test_json_ld.dir/cmake_clean.cmake
.PHONY : csm/sm/CMakeFiles/test_json_ld.dir/clean

csm/sm/CMakeFiles/test_json_ld.dir/depend:
	cd /home/rain/ydlidar_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rain/ydlidar_ws/src /home/rain/ydlidar_ws/src/csm/sm /home/rain/ydlidar_ws/build /home/rain/ydlidar_ws/build/csm/sm /home/rain/ydlidar_ws/build/csm/sm/CMakeFiles/test_json_ld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : csm/sm/CMakeFiles/test_json_ld.dir/depend

