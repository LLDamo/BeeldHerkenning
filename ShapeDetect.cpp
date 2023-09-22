#include "ShapeDetect.hpp"

using namespace cv;

ShapeDetect::ShapeDetect()
{

}
    
void ShapeDetect::getShapeContours(Mat src, std::vector<std::vector<Point>>& foundShapes, Shape shape_)
{
    std::vector<std::vector<Point>> contours;
	std::vector<Vec4i> hierarchy;

	findContours(src, contours, hierarchy, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);

	std::vector<std::vector<Point>> conPoly(contours.size());

	for (int i = 0; i < contours.size(); ++i)
	{
		int area = contourArea(contours[i]);

		if (area > 1000){
			double peri = arcLength(contours[i], true);
			approxPolyDP(contours[i], conPoly[i], 0.02 * peri, true);
			
			int objCor = (int)conPoly[i].size();

			switch(shape_){
				case NONE:
				break;
				case CIRCLE:
					if(isCircle(conPoly[i])){
                        foundShapes.push_back(contours[i]);
					}
				break;
				case SEMI_CIRCLE:
					if(isSemiCircle(conPoly[i])){
                        foundShapes.push_back(contours[i]);
					}
				break;
				case SQUARE:
					if(isSquare(conPoly[i])){
                        foundShapes.push_back(contours[i]);
					}
				break;
				case RECTANGLE:
					if(isRectangle(conPoly[i])){
                        foundShapes.push_back(contours[i]);
					}
				break;
				case TRIANGLE:
					if(isTriangle(conPoly[i])){
                        foundShapes.push_back(contours[i]);
					}
				break;
			}
		}
	}
}

bool ShapeDetect::isSemiCircle(std::vector<Point> conPoly_){
	size_t conPolySize = conPoly_.size();
	if(conPolySize > 4)
	{
		int32_t max_side_length = norm(conPoly_[0] - conPoly_[1]);
		
		for(size_t point_nr = 0; point_nr < conPolySize; ++point_nr)
		{
			int32_t side_length = norm(conPoly_[point_nr] - conPoly_[(point_nr + 1) % conPolySize]);
			if(abs(side_length - max_side_length) > (0.5 * side_length))
			{
				return true;
			}
		}
	}
	return false;
}

bool ShapeDetect::isCircle(const std::vector<Point>& conPoly_){
	return conPoly_.size() > 4 && !isSemiCircle(conPoly_);
}

bool ShapeDetect::isSquare(std::vector<Point> conPoly_)
{
    Rect boundRect = boundingRect(conPoly_);
    if(conPoly_.size() == 4){
        double aspRatio = (double)boundRect.width / (double)boundRect.height;
        if (aspRatio > 0.92 && aspRatio < 1.08){
            return true;
        }
    }
    return false;
}

bool ShapeDetect::isRectangle(const std::vector<Point>& conPoly_)
{
    return (conPoly_.size() == 4 && (!isSquare(conPoly_)));
}

bool ShapeDetect::isTriangle(const std::vector<Point>& conPoly_)
{
    return conPoly_.size() == 3;
}