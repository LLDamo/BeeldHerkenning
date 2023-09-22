#include <iostream>
#include <thread>

#include "ImageRecognition.hpp"

using namespace std;

int main(int argc, char * argv[]) 
{
	uint16_t cameraID = 0;
	if(argc > 1){
		cameraID = stoi(argv[1]);
	}
	

	ImageRecognition aplication(cameraID);

	aplication.configureColors();

	thread t1(&ImageRecognition::runImageRecognition, &aplication);
	if(argc > 2){
		aplication.runBatchCommands(argv[2]);
	}
	else
	{
		aplication.runConsoleCommands();
	}
	t1.join();
	return 0;
}