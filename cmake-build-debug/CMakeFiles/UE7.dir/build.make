# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Thomas\CLionProjects\UE7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/UE7.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/UE7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UE7.dir/flags.make

CMakeFiles/UE7.dir/main.c.obj: CMakeFiles/UE7.dir/flags.make
CMakeFiles/UE7.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/UE7.dir/main.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\UE7.dir\main.c.obj   -c C:\Users\Thomas\CLionProjects\UE7\main.c

CMakeFiles/UE7.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/UE7.dir/main.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Thomas\CLionProjects\UE7\main.c > CMakeFiles\UE7.dir\main.c.i

CMakeFiles/UE7.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/UE7.dir/main.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Thomas\CLionProjects\UE7\main.c -o CMakeFiles\UE7.dir\main.c.s

CMakeFiles/UE7.dir/sort.c.obj: CMakeFiles/UE7.dir/flags.make
CMakeFiles/UE7.dir/sort.c.obj: ../sort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/UE7.dir/sort.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\UE7.dir\sort.c.obj   -c C:\Users\Thomas\CLionProjects\UE7\sort.c

CMakeFiles/UE7.dir/sort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/UE7.dir/sort.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Thomas\CLionProjects\UE7\sort.c > CMakeFiles\UE7.dir\sort.c.i

CMakeFiles/UE7.dir/sort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/UE7.dir/sort.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Thomas\CLionProjects\UE7\sort.c -o CMakeFiles\UE7.dir\sort.c.s

# Object files for target UE7
UE7_OBJECTS = \
"CMakeFiles/UE7.dir/main.c.obj" \
"CMakeFiles/UE7.dir/sort.c.obj"

# External object files for target UE7
UE7_EXTERNAL_OBJECTS =

UE7.exe: CMakeFiles/UE7.dir/main.c.obj
UE7.exe: CMakeFiles/UE7.dir/sort.c.obj
UE7.exe: CMakeFiles/UE7.dir/build.make
UE7.exe: CMakeFiles/UE7.dir/linklibs.rsp
UE7.exe: CMakeFiles/UE7.dir/objects1.rsp
UE7.exe: CMakeFiles/UE7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable UE7.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\UE7.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UE7.dir/build: UE7.exe

.PHONY : CMakeFiles/UE7.dir/build

CMakeFiles/UE7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\UE7.dir\cmake_clean.cmake
.PHONY : CMakeFiles/UE7.dir/clean

CMakeFiles/UE7.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Thomas\CLionProjects\UE7 C:\Users\Thomas\CLionProjects\UE7 C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug C:\Users\Thomas\CLionProjects\UE7\cmake-build-debug\CMakeFiles\UE7.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/UE7.dir/depend

