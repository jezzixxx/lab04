# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jezzixxx/projects/lab03/hello_world_application

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jezzixxx/projects/lab03/hello_world_application/_build

# Include any dependencies generated for this target.
include CMakeFiles/sources.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sources.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sources.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sources.dir/flags.make

# Object files for target sources
sources_OBJECTS =

# External object files for target sources
sources_EXTERNAL_OBJECTS =

sources: CMakeFiles/sources.dir/build.make
sources: /home/jezzixxx/projects/lab03/hello_world_application/formatter_ex/libformatter_ex.a
sources: /home/jezzixxx/projects/lab03/hello_world_application/formatter/libformatter.a
sources: CMakeFiles/sources.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jezzixxx/projects/lab03/hello_world_application/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX executable sources"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sources.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sources.dir/build: sources
.PHONY : CMakeFiles/sources.dir/build

CMakeFiles/sources.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sources.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sources.dir/clean

CMakeFiles/sources.dir/depend:
	cd /home/jezzixxx/projects/lab03/hello_world_application/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jezzixxx/projects/lab03/hello_world_application /home/jezzixxx/projects/lab03/hello_world_application /home/jezzixxx/projects/lab03/hello_world_application/_build /home/jezzixxx/projects/lab03/hello_world_application/_build /home/jezzixxx/projects/lab03/hello_world_application/_build/CMakeFiles/sources.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sources.dir/depend
