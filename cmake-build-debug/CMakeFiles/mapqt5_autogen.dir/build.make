# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /snap/clion/61/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/61/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pinje/projects/mapqt5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pinje/projects/mapqt5/cmake-build-debug

# Utility rule file for mapqt5_autogen.

# Include the progress variables for this target.
include CMakeFiles/mapqt5_autogen.dir/progress.make

CMakeFiles/mapqt5_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pinje/projects/mapqt5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target mapqt5"
	/snap/clion/61/bin/cmake/linux/bin/cmake -E cmake_autogen /home/pinje/projects/mapqt5/cmake-build-debug/CMakeFiles/mapqt5_autogen.dir/AutogenInfo.cmake Debug

mapqt5_autogen: CMakeFiles/mapqt5_autogen
mapqt5_autogen: CMakeFiles/mapqt5_autogen.dir/build.make

.PHONY : mapqt5_autogen

# Rule to build all files generated by this target.
CMakeFiles/mapqt5_autogen.dir/build: mapqt5_autogen

.PHONY : CMakeFiles/mapqt5_autogen.dir/build

CMakeFiles/mapqt5_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mapqt5_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mapqt5_autogen.dir/clean

CMakeFiles/mapqt5_autogen.dir/depend:
	cd /home/pinje/projects/mapqt5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pinje/projects/mapqt5 /home/pinje/projects/mapqt5 /home/pinje/projects/mapqt5/cmake-build-debug /home/pinje/projects/mapqt5/cmake-build-debug /home/pinje/projects/mapqt5/cmake-build-debug/CMakeFiles/mapqt5_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mapqt5_autogen.dir/depend

