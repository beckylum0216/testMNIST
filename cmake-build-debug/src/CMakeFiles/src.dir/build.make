# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.6\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.6\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\tempML\testMNIST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\tempML\testMNIST\cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/src.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/src.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/src.dir/flags.make

src/CMakeFiles/src.dir/Neuron.cpp.obj: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/Neuron.cpp.obj: src/CMakeFiles/src.dir/includes_CXX.rsp
src/CMakeFiles/src.dir/Neuron.cpp.obj: ../src/Neuron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\testMNIST\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/src.dir/Neuron.cpp.obj"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\src.dir\Neuron.cpp.obj -c D:\tempML\testMNIST\src\Neuron.cpp

src/CMakeFiles/src.dir/Neuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/Neuron.cpp.i"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\testMNIST\src\Neuron.cpp > CMakeFiles\src.dir\Neuron.cpp.i

src/CMakeFiles/src.dir/Neuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/Neuron.cpp.s"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\tempML\testMNIST\src\Neuron.cpp -o CMakeFiles\src.dir\Neuron.cpp.s

src/CMakeFiles/src.dir/ImageHeader.cpp.obj: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/ImageHeader.cpp.obj: src/CMakeFiles/src.dir/includes_CXX.rsp
src/CMakeFiles/src.dir/ImageHeader.cpp.obj: ../src/ImageHeader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\testMNIST\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/src.dir/ImageHeader.cpp.obj"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\src.dir\ImageHeader.cpp.obj -c D:\tempML\testMNIST\src\ImageHeader.cpp

src/CMakeFiles/src.dir/ImageHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/ImageHeader.cpp.i"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\testMNIST\src\ImageHeader.cpp > CMakeFiles\src.dir\ImageHeader.cpp.i

src/CMakeFiles/src.dir/ImageHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/ImageHeader.cpp.s"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\tempML\testMNIST\src\ImageHeader.cpp -o CMakeFiles\src.dir\ImageHeader.cpp.s

src/CMakeFiles/src.dir/LabelHeader.cpp.obj: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/LabelHeader.cpp.obj: src/CMakeFiles/src.dir/includes_CXX.rsp
src/CMakeFiles/src.dir/LabelHeader.cpp.obj: ../src/LabelHeader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\testMNIST\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/src.dir/LabelHeader.cpp.obj"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\src.dir\LabelHeader.cpp.obj -c D:\tempML\testMNIST\src\LabelHeader.cpp

src/CMakeFiles/src.dir/LabelHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/LabelHeader.cpp.i"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\testMNIST\src\LabelHeader.cpp > CMakeFiles\src.dir\LabelHeader.cpp.i

src/CMakeFiles/src.dir/LabelHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/LabelHeader.cpp.s"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\tempML\testMNIST\src\LabelHeader.cpp -o CMakeFiles\src.dir\LabelHeader.cpp.s

src/CMakeFiles/src.dir/UtilityFunctions.cpp.obj: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/UtilityFunctions.cpp.obj: src/CMakeFiles/src.dir/includes_CXX.rsp
src/CMakeFiles/src.dir/UtilityFunctions.cpp.obj: ../src/UtilityFunctions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\testMNIST\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/src.dir/UtilityFunctions.cpp.obj"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\src.dir\UtilityFunctions.cpp.obj -c D:\tempML\testMNIST\src\UtilityFunctions.cpp

src/CMakeFiles/src.dir/UtilityFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/UtilityFunctions.cpp.i"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\testMNIST\src\UtilityFunctions.cpp > CMakeFiles\src.dir\UtilityFunctions.cpp.i

src/CMakeFiles/src.dir/UtilityFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/UtilityFunctions.cpp.s"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\tempML\testMNIST\src\UtilityFunctions.cpp -o CMakeFiles\src.dir\UtilityFunctions.cpp.s

# Object files for target src
src_OBJECTS = \
"CMakeFiles/src.dir/Neuron.cpp.obj" \
"CMakeFiles/src.dir/ImageHeader.cpp.obj" \
"CMakeFiles/src.dir/LabelHeader.cpp.obj" \
"CMakeFiles/src.dir/UtilityFunctions.cpp.obj"

# External object files for target src
src_EXTERNAL_OBJECTS =

src/libsrc.a: src/CMakeFiles/src.dir/Neuron.cpp.obj
src/libsrc.a: src/CMakeFiles/src.dir/ImageHeader.cpp.obj
src/libsrc.a: src/CMakeFiles/src.dir/LabelHeader.cpp.obj
src/libsrc.a: src/CMakeFiles/src.dir/UtilityFunctions.cpp.obj
src/libsrc.a: src/CMakeFiles/src.dir/build.make
src/libsrc.a: src/CMakeFiles/src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\tempML\testMNIST\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libsrc.a"
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\src.dir\cmake_clean_target.cmake
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\src.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/src.dir/build: src/libsrc.a

.PHONY : src/CMakeFiles/src.dir/build

src/CMakeFiles/src.dir/clean:
	cd /d D:\tempML\testMNIST\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\src.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/src.dir/clean

src/CMakeFiles/src.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\tempML\testMNIST D:\tempML\testMNIST\src D:\tempML\testMNIST\cmake-build-debug D:\tempML\testMNIST\cmake-build-debug\src D:\tempML\testMNIST\cmake-build-debug\src\CMakeFiles\src.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/src.dir/depend

