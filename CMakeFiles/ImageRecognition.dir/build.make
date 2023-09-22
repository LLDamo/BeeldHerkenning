# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning

# Include any dependencies generated for this target.
include CMakeFiles/ImageRecognition.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ImageRecognition.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ImageRecognition.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ImageRecognition.dir/flags.make

CMakeFiles/ImageRecognition.dir/Main.cpp.o: CMakeFiles/ImageRecognition.dir/flags.make
CMakeFiles/ImageRecognition.dir/Main.cpp.o: Main.cpp
CMakeFiles/ImageRecognition.dir/Main.cpp.o: CMakeFiles/ImageRecognition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ImageRecognition.dir/Main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImageRecognition.dir/Main.cpp.o -MF CMakeFiles/ImageRecognition.dir/Main.cpp.o.d -o CMakeFiles/ImageRecognition.dir/Main.cpp.o -c /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/Main.cpp

CMakeFiles/ImageRecognition.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageRecognition.dir/Main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/Main.cpp > CMakeFiles/ImageRecognition.dir/Main.cpp.i

CMakeFiles/ImageRecognition.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageRecognition.dir/Main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/Main.cpp -o CMakeFiles/ImageRecognition.dir/Main.cpp.s

CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o: CMakeFiles/ImageRecognition.dir/flags.make
CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o: ColorDetect.cpp
CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o: CMakeFiles/ImageRecognition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o -MF CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o.d -o CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o -c /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ColorDetect.cpp

CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ColorDetect.cpp > CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.i

CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ColorDetect.cpp -o CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.s

CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o: CMakeFiles/ImageRecognition.dir/flags.make
CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o: ShapeDetect.cpp
CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o: CMakeFiles/ImageRecognition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o -MF CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o.d -o CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o -c /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ShapeDetect.cpp

CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ShapeDetect.cpp > CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.i

CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ShapeDetect.cpp -o CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.s

CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o: CMakeFiles/ImageRecognition.dir/flags.make
CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o: ColoredShape.cpp
CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o: CMakeFiles/ImageRecognition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o -MF CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o.d -o CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o -c /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ColoredShape.cpp

CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ColoredShape.cpp > CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.i

CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ColoredShape.cpp -o CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.s

CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o: CMakeFiles/ImageRecognition.dir/flags.make
CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o: ImageRecognition.cpp
CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o: CMakeFiles/ImageRecognition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o -MF CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o.d -o CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o -c /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ImageRecognition.cpp

CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ImageRecognition.cpp > CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.i

CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/ImageRecognition.cpp -o CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.s

# Object files for target ImageRecognition
ImageRecognition_OBJECTS = \
"CMakeFiles/ImageRecognition.dir/Main.cpp.o" \
"CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o" \
"CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o" \
"CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o" \
"CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o"

# External object files for target ImageRecognition
ImageRecognition_EXTERNAL_OBJECTS =

ImageRecognition: CMakeFiles/ImageRecognition.dir/Main.cpp.o
ImageRecognition: CMakeFiles/ImageRecognition.dir/ColorDetect.cpp.o
ImageRecognition: CMakeFiles/ImageRecognition.dir/ShapeDetect.cpp.o
ImageRecognition: CMakeFiles/ImageRecognition.dir/ColoredShape.cpp.o
ImageRecognition: CMakeFiles/ImageRecognition.dir/ImageRecognition.cpp.o
ImageRecognition: CMakeFiles/ImageRecognition.dir/build.make
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_alphamat.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_barcode.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_intensity_transform.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_mcc.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_rapid.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_wechat_qrcode.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.5.4d
ImageRecognition: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.5.4d
ImageRecognition: CMakeFiles/ImageRecognition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ImageRecognition"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImageRecognition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ImageRecognition.dir/build: ImageRecognition
.PHONY : CMakeFiles/ImageRecognition.dir/build

CMakeFiles/ImageRecognition.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ImageRecognition.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ImageRecognition.dir/clean

CMakeFiles/ImageRecognition.dir/depend:
	cd /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning /home/bigtasty/Documents/School/WoR/Robot/BeeldHerkenning/CMakeFiles/ImageRecognition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ImageRecognition.dir/depend

