#include "ImageRecognition.hpp"

#include<unistd.h> 

using namespace cv;

ImageRecognition::ImageRecognition()
{
    availableColors[ORANGE] = ColorDetect(0, 0, 0, 25, 255, 255, "Orange Configuration");
    availableColors[YELLOW] = ColorDetect(25, 15, 0, 55, 255, 255, "Yellow Configuration");
    availableColors[GREEN] = ColorDetect(55, 0, 0, 70, 255, 255, "Green Configuration");
    availableColors[PINK] = ColorDetect(159, 0, 0, 179, 255, 255, "Pink Configuration");

    drawColors = {
        Scalar(0, 127, 255),
        Scalar(0, 255, 255),
        Scalar(0, 255, 0),
        Scalar(255, 0, 255)
    };

    shape = NONE;
    color = ORANGE;
    totalTicks = 0;
    timerStarted = false;
    ticksAtStart = 0;
    ticksAtEnd = 0;
    printToConsole = false;
    printed = false;

    cap.open(0, CAP_V4L2);
	
	if (!cap.isOpened()){ 
		std::cout << "No video stream detected" << std::endl;
		system("pause");
	}
}

ImageRecognition::ImageRecognition(const uint16_t camera_nr)
{
    availableColors[ORANGE] = ColorDetect(0, 0, 0, 25, 255, 255, "Orange Configuration");
    availableColors[YELLOW] = ColorDetect(25, 15, 0, 55, 255, 255, "Yellow Configuration");
    availableColors[GREEN] = ColorDetect(55, 0, 0, 70, 255, 255, "Green Configuration");
    availableColors[PINK] = ColorDetect(159, 0, 0, 179, 255, 255, "Pink Configuration");

    drawColors = {
        Scalar(0, 127, 255),
        Scalar(0, 255, 255),
        Scalar(0, 255, 0),
        Scalar(255, 0, 255)
    };

    shape = NONE;
    color = ORANGE;
    totalTicks = 0;
    timerStarted = false;
    ticksAtStart = 0;
    ticksAtEnd = 0;
    printToConsole = false;
    printed = false;
    
    cap.open(camera_nr, CAP_V4L2);
	
	if (!cap.isOpened()){ 
		std::cout << "No video stream detected" << std::endl;
		system("pause");
	}
}

void ImageRecognition::configureColors()
{
    for(std::size_t i = 0; i < availableColors.size(); ++i)
    {
        availableColors[i].setColorRange(cap);
    }
}

void ImageRecognition::runImageRecognition()
{
    Mat img, result;

    while(true){
		
		cap.read(img);
		if (img.empty()){
			break;
		}

		img.copyTo(result);

        std::vector<ColoredShape> objectList;

        getObjects(img, objectList);

        showObjects(result, objectList);

		imshow("Image", result);

		int c = waitKey( 30);
		// if escape is pressed
		if (c == 27)
		{
			break;
		}
	
	}
}

void ImageRecognition::runConsoleCommands()
{
    printToConsole = false;
    while(true){
		std::string inputCommand;
		getline(std::cin, inputCommand);

        handleCommand(inputCommand);
    }
}

void ImageRecognition::runBatchCommands(std::string fileName)
{
    printToConsole = true;

    std::fstream batchFile;

    batchFile.open(fileName,std::ios::in);
    if (batchFile.is_open()){ 
        std::string line;
        while(getline(batchFile, line)){
            std::size_t lastReadableChar = line.find_first_of("#\n");
            if(lastReadableChar > 0){
                char prevChar = line[lastReadableChar - 1];
                while(prevChar == ' ' && lastReadableChar > 0)
                {
                    lastReadableChar -= 1;
                    prevChar = line[lastReadableChar - 1];
                }
            }
            std::string command = line.substr(0, lastReadableChar);
            printed = false;
            handleCommand(command);
            sleep(2);
        }
        batchFile.close();
    }
}

void ImageRecognition::getObjects(Mat& src, std::vector<ColoredShape>& objectList)
{
    Mat mask;
    std::vector<std::vector<Point>> shapes;
    availableColors[color].getColorMask(src, mask);

    ShapeDetect detector;
    detector.getShapeContours(mask, shapes, shape);

    stopTimer();

    for(std::size_t i = 0; i < shapes.size(); ++i)
    {
        objectList.push_back(ColoredShape(drawColors[color], shapes[i]));
    }
}

void ImageRecognition::showObjects(Mat& src, std::vector<ColoredShape>& objectList)
{
    if(objectList.size() == 0)
    {
        if(printToConsole)
        {
            if(!printed){
                std::cout << "Shape with color not found" << std::endl;
            }
        }
        else
        {
            putText(src, "Shape with color not found", {10, 15}, FONT_HERSHEY_DUPLEX, 0.5, Scalar(0, 0, 0));
        }
    }
    else
    {
        std::string areaText = "Area:";
        for(std::size_t i = 0; i < objectList.size(); ++i)
        {
            objectList[i].drawShape(src);
            areaText += (" " + std::to_string(objectList[i].getArea()) + ",");
        }
        if(printToConsole)
        {
            if(!printed){
                std::cout << areaText << std::endl;
            }
        }
        else
        {
            putText(src, areaText, {10, 15}, FONT_HERSHEY_DUPLEX, 0.5, Scalar(0, 0, 0));
        }
    }
    if(printToConsole)
    {
        if(!printed){
            std::cout << "Ticks: " << std::to_string(totalTicks) << std::endl;
            std::cout << "---" << std::endl;
            printed = true;
        }
    }
    else
    {
        putText(src, "Ticks: " + std::to_string(totalTicks), {10, 30}, FONT_HERSHEY_DUPLEX, 0.5, Scalar(0, 0, 0));
    }
}

void ImageRecognition::startTimer()
{
    timerStarted = true;
    ticksAtStart = getTickCount();
}

void ImageRecognition::stopTimer()
{
    if(timerStarted){
        timerStarted = false;
        ticksAtEnd = getTickCount();
        totalTicks = abs(ticksAtEnd - ticksAtStart);
    }
}

void ImageRecognition::handleCommand(std::string command)
{
    std::string input_shape = command.substr(0, command.find_last_of(' '));
    std::string input_color = command.substr(command.find_last_of(' ') + 1, command.find_last_of('\n'));

    if(!command.empty())
    {
        startTimer();
    }

    if(input_shape == "cirkel")
    {
        shape = CIRCLE;
    }
    else if (input_shape == "halve cirkel")
    {
        shape = SEMI_CIRCLE;
    }
    else if (input_shape == "vierkant")
    {
        shape = SQUARE;
    }
    else if (input_shape == "rechthoek")
    {
        shape = RECTANGLE;
    }
    else if (input_shape == "driehoek")
    {
        shape = TRIANGLE;
    }

    if(input_color == "groen")
    {
        color = GREEN;
    }
    else if (input_color == "roze")
    {
        color = PINK;
    }
    else if (input_color == "geel")
    {
        color = YELLOW;
    }
    else if (input_color == "oranje")
    {
        color = ORANGE;
    }
}