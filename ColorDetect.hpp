#ifndef COLOR_RANGE_HPP
#define COLOR_RANGE_HPP

#include "config.hpp"
#include <iostream>

using namespace cv;

struct ColorRange{
	int hmin, smin, vmin;
	int hmax, smax, vmax;
};

class ColorDetect
{
public:
    ColorDetect();

    ColorDetect(const std::string& windowName_);

    ColorDetect(int hmin, 
                int smin, 
                int vmin, 
                int hmax, 
                int smax, 
                int vmax,
                const std::string& windowName_);

    void setColorRange(VideoCapture& cap_);

    void getColorMask(Mat& src, Mat& dst);

private:

    ColorRange color;
    std::string windowName;


};

#endif /*COLOR_RANGE_HPP*/