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
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/tests/test_log.cc.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/tests/test_log.cc.o: ../tests/test_log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhb/myGit/mysylar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/tests/test_log.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/tests/test_log.cc.o -c /home/jhb/myGit/mysylar/tests/test_log.cc

CMakeFiles/test.dir/tests/test_log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/tests/test_log.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhb/myGit/mysylar/tests/test_log.cc > CMakeFiles/test.dir/tests/test_log.cc.i

CMakeFiles/test.dir/tests/test_log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/tests/test_log.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhb/myGit/mysylar/tests/test_log.cc -o CMakeFiles/test.dir/tests/test_log.cc.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/tests/test_log.cc.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

../BIN/test: CMakeFiles/test.dir/tests/test_log.cc.o
../BIN/test: CMakeFiles/test.dir/build.make
../BIN/test: ../lib/libmysylar.so
../BIN/test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhb/myGit/mysylar/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../BIN/test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: ../BIN/test

.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/jhb/myGit/mysylar/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhb/myGit/mysylar /home/jhb/myGit/mysylar /home/jhb/myGit/mysylar/build /home/jhb/myGit/mysylar/build /home/jhb/myGit/mysylar/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

