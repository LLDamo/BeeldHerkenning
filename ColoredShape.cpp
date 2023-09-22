#include "ColoredShape.hpp"

using namespace cv;

ColoredShape::ColoredShape()
{

}

ColoredShape::ColoredShape(Scalar color_,
            std::vector<Point> contour_)
:color(color_), contour(contour_)
{
    std::vector<Point> conPoly;
    this->area = contourArea(contour_);
    double peri = arcLength(contour_, true);
	approxPolyDP(contour_, conPoly, 0.02 * peri, true);
    uint32_t posXsum = 0;
    uint32_t posYsum = 0;

    for(int i = 0; i < conPoly.size(); ++i){
        posXsum += conPoly[i].x;
        posYsum += conPoly[i].y;
    }

    this->x = posXsum / conPoly.size();
    this->y = posYsum / conPoly.size();
}

void ColoredShape::drawShape(Mat& img)
{
    drawContours(img, std::vector<std::vector<Point>>(1,contour), -1, color, 2);
    putText(img, pointToString(x, y), {x, y}, FONT_HERSHEY_DUPLEX, 0.5, Scalar(0, 0, 0));
}

uint32_t ColoredShape::getArea()
{
    return area;
}

std::string ColoredShape::pointToString(uint32_t x, uint32_t y)
{
    std::string result = "(";
	result += std::to_string(x);
	result += ", ";
	result += std::to_string(y);
	result += ")";
	return result;
}
