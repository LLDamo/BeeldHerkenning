#ifndef SHAPE_DETECT_HPP
#define SHAPE_DETECT_HPP

#include "config.hpp"

using namespace cv;

enum Shape {NONE, CIRCLE, SEMI_CIRCLE, SQUARE, RECTANGLE, TRIANGLE};

class ShapeDetect
{
    public:

    ShapeDetect();
    
    void getShapeContours(Mat src, std::vector<std::vector<Point>>& foundShapes, Shape shape_);

    private:

    bool isSemiCircle(std::vector<Point> conPoly_);
    bool isCircle(const std::vector<Point>& conPoly_);
    bool isSquare(std::vector<Point> conPoly_);
    bool isRectangle(const std::vector<Point>& conPoly_);
    bool isTriangle(const std::vector<Point>& conPoly_);
};

#endif /*SHAPE_DETECT_HPP*/