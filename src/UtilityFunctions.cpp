//
// Created by becky on 22/12/2018.
//


#include <opencv2/core/mat.hpp>
#include "UtilityFunctions.h"

UtilityFunctions::UtilityFunctions()
{


}

UtilityFunctions::~UtilityFunctions()
{

}

// the format of the data is reversed
int UtilityFunctions::ReverseByte(int inputBits)
{
    unsigned char channel0, channel1, channel2, channel3;

    channel0 = inputBits & 255;
    channel1 = (inputBits >> 8) & 255;
    channel2 = (inputBits >> 16) & 255;
    channel3 = (inputBits >> 24) & 255;

    return ((int)channel0 << 24) + ((int) channel1 << 16) +((int) channel2 << 8) + channel3;

}


// getting header information with regards to
ImageHeader UtilityFunctions::ReadImageHeader(std::string theFile)
{
    std::cout << "Reading Image Headers..." << std::endl;
    std::ifstream imageFile;
    ImageHeader imageHdr;

    imageFile.open(theFile, std::ios::binary);

    imageHdr.magicNumber = 0;
    imageHdr.maxImages = 0;
    imageHdr.imgWidth = 0;
    imageHdr.imgHeight = 0;

    if(imageFile.is_open())
    {
        imageFile.read((char *) &imageHdr.magicNumber, sizeof(imageHdr.magicNumber));
        imageHdr.magicNumber = ReverseByte(imageHdr.magicNumber);
        imageFile.read((char *) &imageHdr.maxImages, sizeof(imageHdr.maxImages));
        imageHdr.maxImages = ReverseByte(imageHdr.maxImages);
        imageFile.read((char *) &imageHdr.imgWidth, sizeof(imageHdr.imgWidth));
        imageHdr.imgWidth = ReverseByte(imageHdr.imgWidth);
        imageFile.read((char *) &imageHdr.imgHeight, sizeof(imageHdr.imgHeight));
        imageHdr.imgHeight = ReverseByte(imageHdr.imgHeight);
    }
    else
    {
        std::cout << "File failed to open!" << std::endl;
    }

    imageFile.close();

    return imageHdr;
}

LabelHeader UtilityFunctions::ReadLabelHeader(std::string theFile)
{
    std::cout << "Reading label header..." << std::endl;

    std::ifstream labelFile;
    labelFile.open(theFile, std::ios::binary);

    LabelHeader labelHdr;

    labelHdr.magicNumber = 0;
    labelHdr.maxLabels = 0;

    if(labelFile.is_open())
    {
        labelFile.read((char *) &labelHdr.magicNumber, sizeof(labelHdr.magicNumber));
        labelHdr.magicNumber = ReverseByte(labelHdr.magicNumber);
        labelFile.read((char *) &labelHdr.maxLabels, sizeof(labelHdr.maxLabels));
        labelHdr.maxLabels = ReverseByte(labelHdr.maxLabels);
    }

    labelFile.close();
    return labelHdr;
}


std::vector<cv::Mat> UtilityFunctions::ReadImageFile(std::string theFile, ImageHeader imageHdr)
{
    std::cout << "Reading image file..." << std::endl;

    ImageHeader tempHdr;
    std::ifstream imageFile;
    std::vector<cv::Mat> imgMatrix;
    imageFile.open(theFile, std::ios::binary);

    tempHdr.magicNumber = 0;
    tempHdr.maxImages = 0;
    tempHdr.imgWidth = 0;
    tempHdr.imgHeight = 0;

    if(imageFile.is_open())
    {
        //skip the first 4 lines
        std::cout << "Reading psuedo-headers..." << std::endl;
        imageFile.read((char *) &tempHdr.magicNumber, sizeof(imageHdr.magicNumber));
        imageFile.read((char *) &tempHdr.maxImages, sizeof(imageHdr.maxImages));
        imageFile.read((char *) &tempHdr.imgWidth, sizeof(imageHdr.imgWidth));
        imageFile.read((char *) &tempHdr.imgHeight, sizeof(imageHdr.imgHeight));

        std::cout << "Creating temporary arrays..." << std::endl;
        // Initialise array and start reading file




        std::cout << "reading images..." << std::endl;
        // read file and store into array
        for(int ii = 0; ii < imageHdr.maxImages; ii += 1)
        {
            cv::Mat currentImg = cv::Mat(imageHdr.imgHeight, imageHdr.imgWidth, CV_64F);
            for(int jj = 0; jj < imageHdr.imgWidth; jj += 1)
            {
                for(int kk = 0; kk < imageHdr.imgHeight; kk += 1)
                {
                    unsigned char temp = 0;
                    imageFile.read((char*) &temp, sizeof(temp));
                    //std::cout << "unsigned temp input: " << temp << std::endl;
                    currentImg.at<uchar>(jj,kk) = (int)temp ;
                    //std::cout << "double temp input: " << imgMatrix[ii][jj][kk] << std::endl;
                }
            }

            imgMatrix.push_back(currentImg);
        }
    }

    imageFile.close();
    std::cout << "Finished reading file..." << std::endl;

    return imgMatrix;
}


double * UtilityFunctions::ReadLabelFile(std::string theFile, LabelHeader labelHdr)
{
    std::cout << "Reading label files..." << std::endl;

    LabelHeader tempHdr;
    std::ifstream labelFile;
    labelFile.open(theFile, std::ios::binary);

    if(labelFile.is_open())
    {
        //skip the first two lines
        labelFile.read((char*) &tempHdr.magicNumber, sizeof(labelHdr.magicNumber));
        labelFile.read((char*) &tempHdr.maxLabels, sizeof(labelHdr.maxLabels));

        // initialise array and start reading file
        lblMatrix = new double[labelHdr.maxLabels]();
        for (int ii = 0; ii < labelHdr.maxLabels; ii += 1)
        {
            unsigned char temp = 0;
            labelFile.read((char*) &temp, sizeof(temp));
            lblMatrix[ii] = (double) temp;

            //std::cout << "label index:" << ii << " label: " << lblMatrix[ii] << std::endl;
        }
    }

    labelFile.close();

    return  lblMatrix;
}

void UtilityFunctions::DeallocateMemory()
{
    delete[] lblMatrix;
}




void UtilityFunctions::WriteWeightOutput(int neuronIndex, double ** targetWeight, ImageHeader imgHdr)
{
	std::ofstream outputFile;
	
	std::string namu = "murdochnet";
	std::stringstream neurontext;
	neurontext << neuronIndex;
	std::string fileName = namu + neurontext.str() + ".csv";
	std::string delimiter = ",";

	outputFile.open(fileName);

	for (int ii = 0; ii < imgHdr.imgWidth; ii += 1)
	{
		for (int jj = 0; jj < imgHdr.imgHeight; jj += 1)
		{
			

			std::ostringstream tempnum;
			tempnum << std::fixed;
			tempnum << std::setprecision(15);
			tempnum << targetWeight[ii][jj];
			std::string num = tempnum.str();
			outputFile << num;

			if (jj < imgHdr.imgHeight)
			{
				outputFile << delimiter;
			}
			
		}

		outputFile << std::endl;
	}

	outputFile.close();

}

double ** UtilityFunctions::ReadCSVFile(int neuronSize, ImageHeader imgHdr)
{


	double ** tempWeightMatrix = new double*[imgHdr.imgWidth]();
	for (int ii = 0; ii < imgHdr.imgHeight; ii += 1)
	{
		tempWeightMatrix[ii] = new double[imgHdr.imgHeight]();
	}


	for (int aa = 0; aa < neuronSize; aa += 1)
	{
		std::string namu = "murdochnet";
		std::stringstream neurontext;
		neurontext << aa;
		std::string fileName = namu + neurontext.str() + ".csv";
		std::string delimiter = ",";
		std::ifstream inputFile;

		inputFile.open(fileName);

		for (int bb = 0; bb < imgHdr.imgWidth; bb += 1)
		{
			for (int cc = 0; cc < imgHdr.imgHeight; cc += 1)
			{

				std::string tempInput;
				double inputWeight;

				
				if (cc < imgHdr.imgHeight-1)
				{
					std::getline(inputFile, tempInput, ',');
					inputWeight = std::stod(tempInput);
					tempWeightMatrix[bb][cc] = inputWeight;
				}
				else
				{
					std::getline(inputFile, tempInput);
					inputWeight = std::stod(tempInput);
					tempWeightMatrix[bb][cc] = inputWeight;
				}
				

			}
		}

	}
	

	return tempWeightMatrix;
}