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


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/jhb/myGit/mysylar

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jhb/myGit/mysylar/build

# Include any dependencies generated for this target.
include CMakeFiles/mysylar.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mysylar.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mysylar.dir/flags.make

CMakeFiles/mysylar.dir/server/log.cc.o: CMakeFiles/mysylar.dir/flags.make
CMakeFiles/mysylar.dir/server/log.cc.o: ../server/log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhb/myGit/mysylar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mysylar.dir/server/log.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mysylar.dir/server/log.cc.o -c /home/jhb/myGit/mysylar/server/log.cc

CMakeFiles/mysylar.dir/server/log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mysylar.dir/server/log.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhb/myGit/mysylar/server/log.cc > CMakeFiles/mysylar.dir/server/log.cc.i

CMakeFiles/mysylar.dir/server/log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mysylar.dir/server/log.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhb/myGit/mysylar/server/log.cc -o CMakeFiles/mysylar.dir/server/log.cc.s

# Object files for target mysylar
mysylar_OBJECTS = \
"CMakeFiles/mysylar.dir/server/log.cc.o"

# External object files for target mysylar
mysylar_EXTERNAL_OBJECTS =

../lib/libmysylar.so: CMakeFiles/mysylar.dir/server/log.cc.o
../lib/libmysylar.so: CMakeFiles/mysylar.dir/build.make
../lib/libmysylar.so: CMakeFiles/mysylar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhb/myGit/mysylar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../lib/libmysylar.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mysylar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mysylar.dir/build: ../lib/libmysylar.so

.PHONY : CMakeFiles/mysylar.dir/build

CMakeFiles/mysylar.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mysylar.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mysylar.dir/clean

CMakeFiles/mysylar.dir/depend:
	cd /home/jhb/myGit/mysylar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhb/myGit/mysylar /home/jhb/myGit/mysylar /home/jhb/myGit/mysylar/build /home/jhb/myGit/mysylar/build /home/jhb/myGit/mysylar/build/CMakeFiles/mysylar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mysylar.dir/depend

