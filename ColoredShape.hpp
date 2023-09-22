#ifndef COLORED_SHAPE_HPP
#define COLORED_SHAPE_HPP

#include "config.hpp"

using namespace cv;

class ColoredShape
{
    public:

    ColoredShape();

    ColoredShape(Scalar color_,
                std::vector<Point> contour_);

    void drawShape(Mat& img);
    uint32_t getArea();

    private:

    std::string pointToString(uint32_t x, uint32_t y);

    Scalar color;
    std::vector<Point> contour;
    uint32_t x;
    uint32_t y;
    uint32_t area;

};

#endif /*COLORED_SHAPE_HPP*/