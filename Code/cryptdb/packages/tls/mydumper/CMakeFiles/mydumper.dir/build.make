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
include CMakeFiles/mydumper.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mydumper.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mydumper.dir/flags.make

CMakeFiles/mydumper.dir/mydumper.c.o: CMakeFiles/mydumper.dir/flags.make
CMakeFiles/mydumper.dir/mydumper.c.o: mydumper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mydumper.dir/mydumper.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mydumper.dir/mydumper.c.o   -c /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/mydumper.c

CMakeFiles/mydumper.dir/mydumper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mydumper.dir/mydumper.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/mydumper.c > CMakeFiles/mydumper.dir/mydumper.c.i

CMakeFiles/mydumper.dir/mydumper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mydumper.dir/mydumper.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/mydumper.c -o CMakeFiles/mydumper.dir/mydumper.c.s

CMakeFiles/mydumper.dir/mydumper.c.o.requires:

.PHONY : CMakeFiles/mydumper.dir/mydumper.c.o.requires

CMakeFiles/mydumper.dir/mydumper.c.o.provides: CMakeFiles/mydumper.dir/mydumper.c.o.requires
	$(MAKE) -f CMakeFiles/mydumper.dir/build.make CMakeFiles/mydumper.dir/mydumper.c.o.provides.build
.PHONY : CMakeFiles/mydumper.dir/mydumper.c.o.provides

CMakeFiles/mydumper.dir/mydumper.c.o.provides.build: CMakeFiles/mydumper.dir/mydumper.c.o


CMakeFiles/mydumper.dir/server_detect.c.o: CMakeFiles/mydumper.dir/flags.make
CMakeFiles/mydumper.dir/server_detect.c.o: server_detect.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mydumper.dir/server_detect.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mydumper.dir/server_detect.c.o   -c /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/server_detect.c

CMakeFiles/mydumper.dir/server_detect.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mydumper.dir/server_detect.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/server_detect.c > CMakeFiles/mydumper.dir/server_detect.c.i

CMakeFiles/mydumper.dir/server_detect.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mydumper.dir/server_detect.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/server_detect.c -o CMakeFiles/mydumper.dir/server_detect.c.s

CMakeFiles/mydumper.dir/server_detect.c.o.requires:

.PHONY : CMakeFiles/mydumper.dir/server_detect.c.o.requires

CMakeFiles/mydumper.dir/server_detect.c.o.provides: CMakeFiles/mydumper.dir/server_detect.c.o.requires
	$(MAKE) -f CMakeFiles/mydumper.dir/build.make CMakeFiles/mydumper.dir/server_detect.c.o.provides.build
.PHONY : CMakeFiles/mydumper.dir/server_detect.c.o.provides

CMakeFiles/mydumper.dir/server_detect.c.o.provides.build: CMakeFiles/mydumper.dir/server_detect.c.o


CMakeFiles/mydumper.dir/g_unix_signal.c.o: CMakeFiles/mydumper.dir/flags.make
CMakeFiles/mydumper.dir/g_unix_signal.c.o: g_unix_signal.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/mydumper.dir/g_unix_signal.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mydumper.dir/g_unix_signal.c.o   -c /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/g_unix_signal.c

CMakeFiles/mydumper.dir/g_unix_signal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mydumper.dir/g_unix_signal.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/g_unix_signal.c > CMakeFiles/mydumper.dir/g_unix_signal.c.i

CMakeFiles/mydumper.dir/g_unix_signal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mydumper.dir/g_unix_signal.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/g_unix_signal.c -o CMakeFiles/mydumper.dir/g_unix_signal.c.s

CMakeFiles/mydumper.dir/g_unix_signal.c.o.requires:

.PHONY : CMakeFiles/mydumper.dir/g_unix_signal.c.o.requires

CMakeFiles/mydumper.dir/g_unix_signal.c.o.provides: CMakeFiles/mydumper.dir/g_unix_signal.c.o.requires
	$(MAKE) -f CMakeFiles/mydumper.dir/build.make CMakeFiles/mydumper.dir/g_unix_signal.c.o.provides.build
.PHONY : CMakeFiles/mydumper.dir/g_unix_signal.c.o.provides

CMakeFiles/mydumper.dir/g_unix_signal.c.o.provides.build: CMakeFiles/mydumper.dir/g_unix_signal.c.o


# Object files for target mydumper
mydumper_OBJECTS = \
"CMakeFiles/mydumper.dir/mydumper.c.o" \
"CMakeFiles/mydumper.dir/server_detect.c.o" \
"CMakeFiles/mydumper.dir/g_unix_signal.c.o"

# External object files for target mydumper
mydumper_EXTERNAL_OBJECTS =

mydumper: CMakeFiles/mydumper.dir/mydumper.c.o
mydumper: CMakeFiles/mydumper.dir/server_detect.c.o
mydumper: CMakeFiles/mydumper.dir/g_unix_signal.c.o
mydumper: CMakeFiles/mydumper.dir/build.make
mydumper: /usr/lib/x86_64-linux-gnu/libmysqlclient.so
mydumper: /usr/lib/x86_64-linux-gnu/libpthread.so
mydumper: /usr/lib/x86_64-linux-gnu/libz.so
mydumper: /usr/lib/x86_64-linux-gnu/libm.so
mydumper: /usr/lib/x86_64-linux-gnu/librt.so
mydumper: /usr/lib/x86_64-linux-gnu/libdl.so
mydumper: /usr/lib/x86_64-linux-gnu/libglib-2.0.so
mydumper: /usr/lib/x86_64-linux-gnu/libgthread-2.0.so
mydumper: /usr/lib/x86_64-linux-gnu/libpcre.so
mydumper: /usr/lib/x86_64-linux-gnu/libz.so
mydumper: /usr/lib/x86_64-linux-gnu/libm.so
mydumper: /usr/lib/x86_64-linux-gnu/librt.so
mydumper: /usr/lib/x86_64-linux-gnu/libdl.so
mydumper: /usr/lib/x86_64-linux-gnu/libglib-2.0.so
mydumper: /usr/lib/x86_64-linux-gnu/libgthread-2.0.so
mydumper: /usr/lib/x86_64-linux-gnu/libpcre.so
mydumper: CMakeFiles/mydumper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable mydumper"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mydumper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mydumper.dir/build: mydumper

.PHONY : CMakeFiles/mydumper.dir/build

CMakeFiles/mydumper.dir/requires: CMakeFiles/mydumper.dir/mydumper.c.o.requires
CMakeFiles/mydumper.dir/requires: CMakeFiles/mydumper.dir/server_detect.c.o.requires
CMakeFiles/mydumper.dir/requires: CMakeFiles/mydumper.dir/g_unix_signal.c.o.requires

.PHONY : CMakeFiles/mydumper.dir/requires

CMakeFiles/mydumper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mydumper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mydumper.dir/clean

CMakeFiles/mydumper.dir/depend:
	cd /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper /home/casualet/github/Practical-Cryptdb/packages/tls/mydumper/CMakeFiles/mydumper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mydumper.dir/depend

