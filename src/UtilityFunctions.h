//
// Created by becky on 22/12/2018.
//

#ifndef DEEPLENS_RL_33111264_UTILITYFUNCTIONS_H
#define DEEPLENS_RL_33111264_UTILITYFUNCTIONS_H

#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
#include <iomanip>
#include <string>
#include "ImageHeader.h"
#include "LabelHeader.h"

class UtilityFunctions {
    public:
        UtilityFunctions();
        ~UtilityFunctions();
        int ReverseByte(int inputBits);
        ImageHeader ReadImageHeader(std::string theFile);
        LabelHeader ReadLabelHeader(std::string theFile);

        std::vector<cv::Mat> ReadImageFile(std::string theFile, ImageHeader  imageHdr);
        double * ReadLabelFile(std::string theFile, LabelHeader  labelHdr);
        void DeallocateMemory();

		void WriteWeightOutput(int neuronIndex, double ** targetWeights, ImageHeader imgHdr);

		double ** ReadCSVFile(int neuronSize, ImageHeader imgHdr);


    private:
        double * lblMatrix;

};


#endif //DEEPLENS_RL_33111264_UTILITYFUNCTIONS_H
