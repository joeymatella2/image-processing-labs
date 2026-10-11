/************************************************************
 * File: image_processing.h
 *
 * Description: Interface for image processing functions
 *
 * Author: Joseph Matella
 *
 * Revision history:
 *
 ************************************************************/

#ifndef IMAGE_PROCESSING_H
#define IMAGE_PROCESSING_H

#include <opencv2/opencv.hpp>

// Function prototypes

cv::Mat grayscale(const cv::Mat& frame);

cv::Mat sobelFilter(const cv::Mat& grayFrame);

#endif  // IMAGE_PROCESSING_H