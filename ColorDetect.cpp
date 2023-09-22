#include "ColorDetect.hpp"

using namespace cv;

ColorDetect::ColorDetect()
:color{0, 0, 0, 179, 255, 255}, windowName("Color Config")
{

}

ColorDetect::ColorDetect(const std::string& windowName_)
:color{0, 0, 0, 179, 255, 255}, windowName(windowName_)
{

}

ColorDetect::ColorDetect(int hmin, 
                        int smin, 
                        int vmin, 
                        int hmax, 
                        int smax, 
                        int vmax,
                        const std::string& windowName_)
:color{hmin, smin, vmin, hmax, smax, vmax}, windowName(windowName_)
{

}

void ColorDetect::setColorRange(VideoCapture& cap_)
{
    namedWindow(windowName, (640, 1));
    createTrackbar("Hue Min", windowName, &color.hmin, 179);
    createTrackbar("Hue Max", windowName, &color.hmax, 179);
    createTrackbar("Sat Min", windowName, &color.smin, 255);
    createTrackbar("Sat Max", windowName, &color.smax, 255);
    createTrackbar("Val Min", windowName, &color.vmin, 255);
    createTrackbar("Val Max", windowName, &color.vmax, 255);

    Mat img, imgBlur, imgHSV, mask;

    while(true){
        cap_.read(img);
        if (img.empty()){
            break;
        }

        GaussianBlur(img, imgBlur, Size(3, 3), 3, 0);
        cvtColor(imgBlur, imgHSV, COLOR_BGR2HSV);
        // ColorRange filterColor = this->color;
        Scalar lower(color.hmin, color.smin, color.vmin);
        Scalar upper(color.hmax, color.smax, color.vmax);
        inRange(imgHSV, lower, upper, mask);

        imshow(windowName, mask);
        imshow("Image", img);

        int c = waitKey( 30);
        // if escape is pressed
        if (c == 27)
        {
            break;
        }
    
    }
    destroyWindow(windowName);
}

void ColorDetect::getColorMask(Mat& src, Mat& dst)
{
    Mat imgBlur, imgHSV;
    GaussianBlur(src, imgBlur, Size(3, 3), 3, 0);
    cvtColor(imgBlur, imgHSV, COLOR_BGR2HSV);
    // ColorRange filterColor = color;
    Scalar lower(color.hmin, color.smin, color.vmin);
    Scalar upper(color.hmax, color.smax, color.vmax);
    inRange(imgHSV, lower, upper, dst);
}