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
include csm/sm/CMakeFiles/log2pdf.dir/depend.make

# Include the progress variables for this target.
include csm/sm/CMakeFiles/log2pdf.dir/progress.make

# Include the compile flags for this target's objects.
include csm/sm/CMakeFiles/log2pdf.dir/flags.make

csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o: csm/sm/CMakeFiles/log2pdf.dir/flags.make
csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o: /home/rain/ydlidar_ws/src/csm/sm/apps/log2pdf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o"
	cd /home/rain/ydlidar_ws/build/csm/sm && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/log2pdf.dir/apps/log2pdf.o   -c /home/rain/ydlidar_ws/src/csm/sm/apps/log2pdf.c

csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log2pdf.dir/apps/log2pdf.i"
	cd /home/rain/ydlidar_ws/build/csm/sm && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rain/ydlidar_ws/src/csm/sm/apps/log2pdf.c > CMakeFiles/log2pdf.dir/apps/log2pdf.i

csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log2pdf.dir/apps/log2pdf.s"
	cd /home/rain/ydlidar_ws/build/csm/sm && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rain/ydlidar_ws/src/csm/sm/apps/log2pdf.c -o CMakeFiles/log2pdf.dir/apps/log2pdf.s

csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.requires:

.PHONY : csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.requires

csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.provides: csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.requires
	$(MAKE) -f csm/sm/CMakeFiles/log2pdf.dir/build.make csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.provides.build
.PHONY : csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.provides

csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.provides.build: csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o


# Object files for target log2pdf
log2pdf_OBJECTS = \
"CMakeFiles/log2pdf.dir/apps/log2pdf.o"

# External object files for target log2pdf
log2pdf_EXTERNAL_OBJECTS =

csm/sm/log2pdf: csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o
csm/sm/log2pdf: csm/sm/CMakeFiles/log2pdf.dir/build.make
csm/sm/log2pdf: /home/rain/ydlidar_ws/devel/lib/libcsm-static.a
csm/sm/log2pdf: csm/sm/CMakeFiles/log2pdf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rain/ydlidar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable log2pdf"
	cd /home/rain/ydlidar_ws/build/csm/sm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log2pdf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
csm/sm/CMakeFiles/log2pdf.dir/build: csm/sm/log2pdf

.PHONY : csm/sm/CMakeFiles/log2pdf.dir/build

csm/sm/CMakeFiles/log2pdf.dir/requires: csm/sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o.requires

.PHONY : csm/sm/CMakeFiles/log2pdf.dir/requires

csm/sm/CMakeFiles/log2pdf.dir/clean:
	cd /home/rain/ydlidar_ws/build/csm/sm && $(CMAKE_COMMAND) -P CMakeFiles/log2pdf.dir/cmake_clean.cmake
.PHONY : csm/sm/CMakeFiles/log2pdf.dir/clean

csm/sm/CMakeFiles/log2pdf.dir/depend:
	cd /home/rain/ydlidar_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rain/ydlidar_ws/src /home/rain/ydlidar_ws/src/csm/sm /home/rain/ydlidar_ws/build /home/rain/ydlidar_ws/build/csm/sm /home/rain/ydlidar_ws/build/csm/sm/CMakeFiles/log2pdf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : csm/sm/CMakeFiles/log2pdf.dir/depend

