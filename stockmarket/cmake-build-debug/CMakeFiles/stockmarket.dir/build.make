# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yagizozcan/Desktop/C++/stockmarket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/stockmarket.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/stockmarket.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/stockmarket.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stockmarket.dir/flags.make

CMakeFiles/stockmarket.dir/main.cpp.o: CMakeFiles/stockmarket.dir/flags.make
CMakeFiles/stockmarket.dir/main.cpp.o: /Users/yagizozcan/Desktop/C++/stockmarket/main.cpp
CMakeFiles/stockmarket.dir/main.cpp.o: CMakeFiles/stockmarket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stockmarket.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/stockmarket.dir/main.cpp.o -MF CMakeFiles/stockmarket.dir/main.cpp.o.d -o CMakeFiles/stockmarket.dir/main.cpp.o -c /Users/yagizozcan/Desktop/C++/stockmarket/main.cpp

CMakeFiles/stockmarket.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/stockmarket.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yagizozcan/Desktop/C++/stockmarket/main.cpp > CMakeFiles/stockmarket.dir/main.cpp.i

CMakeFiles/stockmarket.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/stockmarket.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yagizozcan/Desktop/C++/stockmarket/main.cpp -o CMakeFiles/stockmarket.dir/main.cpp.s

# Object files for target stockmarket
stockmarket_OBJECTS = \
"CMakeFiles/stockmarket.dir/main.cpp.o"

# External object files for target stockmarket
stockmarket_EXTERNAL_OBJECTS =

stockmarket: CMakeFiles/stockmarket.dir/main.cpp.o
stockmarket: CMakeFiles/stockmarket.dir/build.make
stockmarket: /opt/homebrew/lib/libsfml-graphics.2.6.1.dylib
stockmarket: /opt/homebrew/lib/libsfml-audio.2.6.1.dylib
stockmarket: /opt/homebrew/lib/libsfml-network.2.6.1.dylib
stockmarket: /opt/homebrew/lib/libsfml-window.2.6.1.dylib
stockmarket: /opt/homebrew/lib/libsfml-system.2.6.1.dylib
stockmarket: CMakeFiles/stockmarket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stockmarket"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stockmarket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stockmarket.dir/build: stockmarket
.PHONY : CMakeFiles/stockmarket.dir/build

CMakeFiles/stockmarket.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stockmarket.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stockmarket.dir/clean

CMakeFiles/stockmarket.dir/depend:
	cd /Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yagizozcan/Desktop/C++/stockmarket /Users/yagizozcan/Desktop/C++/stockmarket /Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug /Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug /Users/yagizozcan/Desktop/C++/stockmarket/cmake-build-debug/CMakeFiles/stockmarket.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/stockmarket.dir/depend
