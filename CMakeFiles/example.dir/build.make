# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = ../rts3917_base/host/bin/cmake

# The command to remove a file.
RM = ../rts3917_base/host/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = .

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = .

# Include any dependencies generated for this target.
include CMakeFiles/example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example.dir/flags.make

CMakeFiles/example.dir/main.c.o: CMakeFiles/example.dir/flags.make
CMakeFiles/example.dir/main.c.o: main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=./CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/example.dir/main.c.o"
	../rts3917_base/host/bin/asdk-linux-gcc --sysroot=../rts3917_base/host/arm-buildroot-linux-uclibcgnueabihf/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/example.dir/main.c.o   -c ./main.c

CMakeFiles/example.dir/main.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/example.dir/main.c.i"
	../rts3917_base/host/bin/asdk-linux-gcc --sysroot=../rts3917_base/host/arm-buildroot-linux-uclibcgnueabihf/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E ./main.c > CMakeFiles/example.dir/main.c.i

CMakeFiles/example.dir/main.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/example.dir/main.c.s"
	../rts3917_base/host/bin/asdk-linux-gcc --sysroot=../rts3917_base/host/arm-buildroot-linux-uclibcgnueabihf/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S ./main.c -o CMakeFiles/example.dir/main.c.s

# Object files for target example
example_OBJECTS = \
"CMakeFiles/example.dir/main.c.o"

# External object files for target example
example_EXTERNAL_OBJECTS =

example: CMakeFiles/example.dir/main.c.o
example: CMakeFiles/example.dir/build.make
example: CMakeFiles/example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=./CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example.dir/build: example

.PHONY : CMakeFiles/example.dir/build

CMakeFiles/example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example.dir/clean

CMakeFiles/example.dir/depend:
	cd . && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" . . . . ./CMakeFiles/example.dir/DependInfo.cmake
.PHONY : CMakeFiles/example.dir/depend

