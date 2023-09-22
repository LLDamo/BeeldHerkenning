#ifndef IMAGE_RECOGNITION_HPP
#define IMAGE_RECOGNITION_HPP

#include "config.hpp"
#include "ColorDetect.hpp"
#include "ShapeDetect.hpp"
#include "ColoredShape.hpp"

#include <iostream>
#include <fstream>

using namespace cv;

enum Color {ORANGE, YELLOW, GREEN, PINK};

class ImageRecognition
{
    public:

    ImageRecognition();

    ImageRecognition(const uint16_t camera_nr);

    void configureColors();

    void runImageRecognition();

    void runConsoleCommands();

    void runBatchCommands(std::string fileName);

    private:

    void getObjects(Mat& src, std::vector<ColoredShape>& objectList);

    void showObjects(Mat& src, std::vector<ColoredShape>& objectList);

    void startTimer();

    void stopTimer();

    void handleCommand(std::string command);

    std::array<ColorDetect, 4> availableColors;

    std::array<Scalar, 4> drawColors;
    
    VideoCapture cap;
    
    Shape shape;
    
    Color color;
    
    uint64_t totalTicks;
    
    bool timerStarted;
    
    uint64_t ticksAtStart;
    
    uint64_t ticksAtEnd;

    bool printToConsole;

    bool printed;
};

#endif /*IMAGE_RECOGNITION_HPP*/