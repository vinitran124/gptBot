# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /snap/cmake/1299/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1299/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vinitran/Documents/IceteaLab/go-llama.cpp/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test-sampling.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test-sampling.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-sampling.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-sampling.dir/flags.make

tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.o: tests/CMakeFiles/test-sampling.dir/flags.make
tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.o: /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/test-sampling.cpp
tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.o: tests/CMakeFiles/test-sampling.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinitran/Documents/IceteaLab/go-llama.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.o"
	cd /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.o -MF CMakeFiles/test-sampling.dir/test-sampling.cpp.o.d -o CMakeFiles/test-sampling.dir/test-sampling.cpp.o -c /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/test-sampling.cpp

tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-sampling.dir/test-sampling.cpp.i"
	cd /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/test-sampling.cpp > CMakeFiles/test-sampling.dir/test-sampling.cpp.i

tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-sampling.dir/test-sampling.cpp.s"
	cd /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/test-sampling.cpp -o CMakeFiles/test-sampling.dir/test-sampling.cpp.s

# Object files for target test-sampling
test__sampling_OBJECTS = \
"CMakeFiles/test-sampling.dir/test-sampling.cpp.o"

# External object files for target test-sampling
test__sampling_EXTERNAL_OBJECTS =

bin/test-sampling: tests/CMakeFiles/test-sampling.dir/test-sampling.cpp.o
bin/test-sampling: tests/CMakeFiles/test-sampling.dir/build.make
bin/test-sampling: libllama.a
bin/test-sampling: tests/CMakeFiles/test-sampling.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vinitran/Documents/IceteaLab/go-llama.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test-sampling"
	cd /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-sampling.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-sampling.dir/build: bin/test-sampling
.PHONY : tests/CMakeFiles/test-sampling.dir/build

tests/CMakeFiles/test-sampling.dir/clean:
	cd /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-sampling.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-sampling.dir/clean

tests/CMakeFiles/test-sampling.dir/depend:
	cd /home/vinitran/Documents/IceteaLab/go-llama.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests /home/vinitran/Documents/IceteaLab/go-llama.cpp/build /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests/CMakeFiles/test-sampling.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test-sampling.dir/depend
