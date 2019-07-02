#include <iostream>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "UtilityFunctions.h"

void DisplayImage()
{
    std::string imgFile = "../mnist/train-images.idx3-ubyte";
    std::string lblFile = "../mnist/train-labels.idx1-ubyte";
    ImageHeader imgHdr;
    LabelHeader lblHdr;
    UtilityFunctions uf;

    std::cout << "Running Display Image..." << std::endl;

    imgHdr = uf.ReadImageHeader(imgFile);
    lblHdr = uf.ReadLabelHeader(lblFile);

    std::vector<cv::Mat> imageMatrix;


    imageMatrix = uf.ReadImageFile(imgFile, imgHdr);



    cv::namedWindow("Test OpenCV", cv::WINDOW_AUTOSIZE);
    for(int ii = 0; ii < imgHdr.maxImages; ii += 1)
    {
        cv::imshow("Test OpenCV", imageMatrix[ii]);
    }

    cv::waitKey(0);

}


int main()
{
    std::cout << "Running main..." << std::endl;
    DisplayImage();


    return 0;
}