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
CMAKE_SOURCE_DIR = /home/piotrsamczuk/wsl2Practice/doublyLinkedList

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/piotrsamczuk/wsl2Practice/doublyLinkedList/build

# Include any dependencies generated for this target.
include CMakeFiles/doublyLinkedList.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/doublyLinkedList.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/doublyLinkedList.dir/flags.make

CMakeFiles/doublyLinkedList.dir/main.cpp.o: CMakeFiles/doublyLinkedList.dir/flags.make
CMakeFiles/doublyLinkedList.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrsamczuk/wsl2Practice/doublyLinkedList/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/doublyLinkedList.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/doublyLinkedList.dir/main.cpp.o -c /home/piotrsamczuk/wsl2Practice/doublyLinkedList/main.cpp

CMakeFiles/doublyLinkedList.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/doublyLinkedList.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/piotrsamczuk/wsl2Practice/doublyLinkedList/main.cpp > CMakeFiles/doublyLinkedList.dir/main.cpp.i

CMakeFiles/doublyLinkedList.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/doublyLinkedList.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/piotrsamczuk/wsl2Practice/doublyLinkedList/main.cpp -o CMakeFiles/doublyLinkedList.dir/main.cpp.s

# Object files for target doublyLinkedList
doublyLinkedList_OBJECTS = \
"CMakeFiles/doublyLinkedList.dir/main.cpp.o"

# External object files for target doublyLinkedList
doublyLinkedList_EXTERNAL_OBJECTS =

doublyLinkedList: CMakeFiles/doublyLinkedList.dir/main.cpp.o
doublyLinkedList: CMakeFiles/doublyLinkedList.dir/build.make
doublyLinkedList: CMakeFiles/doublyLinkedList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/piotrsamczuk/wsl2Practice/doublyLinkedList/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable doublyLinkedList"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/doublyLinkedList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/doublyLinkedList.dir/build: doublyLinkedList

.PHONY : CMakeFiles/doublyLinkedList.dir/build

CMakeFiles/doublyLinkedList.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/doublyLinkedList.dir/cmake_clean.cmake
.PHONY : CMakeFiles/doublyLinkedList.dir/clean

CMakeFiles/doublyLinkedList.dir/depend:
	cd /home/piotrsamczuk/wsl2Practice/doublyLinkedList/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/piotrsamczuk/wsl2Practice/doublyLinkedList /home/piotrsamczuk/wsl2Practice/doublyLinkedList /home/piotrsamczuk/wsl2Practice/doublyLinkedList/build /home/piotrsamczuk/wsl2Practice/doublyLinkedList/build /home/piotrsamczuk/wsl2Practice/doublyLinkedList/build/CMakeFiles/doublyLinkedList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/doublyLinkedList.dir/depend

