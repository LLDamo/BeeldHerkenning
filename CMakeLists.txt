cmake_minimum_required(VERSION 3.5)
project( ImageRecognition )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
set(src_files
    "Main.cpp"
    "ColorDetect.cpp"
    "ShapeDetect.cpp"
    "ColoredShape.cpp"
    "ImageRecognition.cpp"
)
add_executable( ImageRecognition ${src_files} )
target_link_libraries( ImageRecognition ${OpenCV_LIBS} )
