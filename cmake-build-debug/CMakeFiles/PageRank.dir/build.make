# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\ptssk\CLionProjects\PageRank

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\ptssk\CLionProjects\PageRank\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PageRank.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/PageRank.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PageRank.dir/flags.make

CMakeFiles/PageRank.dir/main.cpp.obj: CMakeFiles/PageRank.dir/flags.make
CMakeFiles/PageRank.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ptssk\CLionProjects\PageRank\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PageRank.dir/main.cpp.obj"
	C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\PageRank.dir\main.cpp.obj -c C:\Users\ptssk\CLionProjects\PageRank\main.cpp

CMakeFiles/PageRank.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PageRank.dir/main.cpp.i"
	C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ptssk\CLionProjects\PageRank\main.cpp > CMakeFiles\PageRank.dir\main.cpp.i

CMakeFiles/PageRank.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PageRank.dir/main.cpp.s"
	C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ptssk\CLionProjects\PageRank\main.cpp -o CMakeFiles\PageRank.dir\main.cpp.s

# Object files for target PageRank
PageRank_OBJECTS = \
"CMakeFiles/PageRank.dir/main.cpp.obj"

# External object files for target PageRank
PageRank_EXTERNAL_OBJECTS =

PageRank.exe: CMakeFiles/PageRank.dir/main.cpp.obj
PageRank.exe: CMakeFiles/PageRank.dir/build.make
PageRank.exe: CMakeFiles/PageRank.dir/linklibs.rsp
PageRank.exe: CMakeFiles/PageRank.dir/objects1.rsp
PageRank.exe: CMakeFiles/PageRank.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\ptssk\CLionProjects\PageRank\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PageRank.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PageRank.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PageRank.dir/build: PageRank.exe
.PHONY : CMakeFiles/PageRank.dir/build

CMakeFiles/PageRank.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PageRank.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PageRank.dir/clean

CMakeFiles/PageRank.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\ptssk\CLionProjects\PageRank C:\Users\ptssk\CLionProjects\PageRank C:\Users\ptssk\CLionProjects\PageRank\cmake-build-debug C:\Users\ptssk\CLionProjects\PageRank\cmake-build-debug C:\Users\ptssk\CLionProjects\PageRank\cmake-build-debug\CMakeFiles\PageRank.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PageRank.dir/depend
