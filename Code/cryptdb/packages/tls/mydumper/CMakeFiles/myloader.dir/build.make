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
CMAKE_SOURCE_DIR = /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper

# Include any dependencies generated for this target.
include CMakeFiles/myloader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myloader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myloader.dir/flags.make

CMakeFiles/myloader.dir/myloader.c.o: CMakeFiles/myloader.dir/flags.make
CMakeFiles/myloader.dir/myloader.c.o: myloader.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/myloader.dir/myloader.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/myloader.dir/myloader.c.o   -c /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/myloader.c

CMakeFiles/myloader.dir/myloader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/myloader.dir/myloader.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/myloader.c > CMakeFiles/myloader.dir/myloader.c.i

CMakeFiles/myloader.dir/myloader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/myloader.dir/myloader.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/myloader.c -o CMakeFiles/myloader.dir/myloader.c.s

CMakeFiles/myloader.dir/myloader.c.o.requires:

.PHONY : CMakeFiles/myloader.dir/myloader.c.o.requires

CMakeFiles/myloader.dir/myloader.c.o.provides: CMakeFiles/myloader.dir/myloader.c.o.requires
	$(MAKE) -f CMakeFiles/myloader.dir/build.make CMakeFiles/myloader.dir/myloader.c.o.provides.build
.PHONY : CMakeFiles/myloader.dir/myloader.c.o.provides

CMakeFiles/myloader.dir/myloader.c.o.provides.build: CMakeFiles/myloader.dir/myloader.c.o


# Object files for target myloader
myloader_OBJECTS = \
"CMakeFiles/myloader.dir/myloader.c.o"

# External object files for target myloader
myloader_EXTERNAL_OBJECTS =

myloader: CMakeFiles/myloader.dir/myloader.c.o
myloader: CMakeFiles/myloader.dir/build.make
myloader: /usr/lib/x86_64-linux-gnu/libmysqlclient.so
myloader: /usr/lib/x86_64-linux-gnu/libpthread.so
myloader: /usr/lib/x86_64-linux-gnu/libz.so
myloader: /usr/lib/x86_64-linux-gnu/libm.so
myloader: /usr/lib/x86_64-linux-gnu/librt.so
myloader: /usr/lib/x86_64-linux-gnu/libdl.so
myloader: /usr/lib/x86_64-linux-gnu/libglib-2.0.so
myloader: /usr/lib/x86_64-linux-gnu/libgthread-2.0.so
myloader: /usr/lib/x86_64-linux-gnu/libpcre.so
myloader: /usr/lib/x86_64-linux-gnu/libz.so
myloader: /usr/lib/x86_64-linux-gnu/libm.so
myloader: /usr/lib/x86_64-linux-gnu/librt.so
myloader: /usr/lib/x86_64-linux-gnu/libdl.so
myloader: /usr/lib/x86_64-linux-gnu/libglib-2.0.so
myloader: /usr/lib/x86_64-linux-gnu/libgthread-2.0.so
myloader: /usr/lib/x86_64-linux-gnu/libpcre.so
myloader: CMakeFiles/myloader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable myloader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myloader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myloader.dir/build: myloader

.PHONY : CMakeFiles/myloader.dir/build

CMakeFiles/myloader.dir/requires: CMakeFiles/myloader.dir/myloader.c.o.requires

.PHONY : CMakeFiles/myloader.dir/requires

CMakeFiles/myloader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myloader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myloader.dir/clean

CMakeFiles/myloader.dir/depend:
	cd /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles/myloader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myloader.dir/depend
