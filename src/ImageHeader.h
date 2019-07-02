//
// Created by becky on 23/06/2019.
//

#ifndef TESTMNIST_IMAGEHEADER_H
#define TESTMNIST_IMAGEHEADER_H


class ImageHeader {
    public:
        /// magic number
        int magicNumber;
        // number of images
        int maxImages;
        // number of columns
        int imgWidth;
        // number of rows
        int imgHeight;
};


#endif //TESTMNIST_IMAGEHEADER_H
