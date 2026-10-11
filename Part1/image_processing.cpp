/************************************************************
 * File: image_processing.cpp
 *
 * Description: Contains functions for image processing tasks
 *
 * Author: Joseph Matella
 *
 * Revisions:
 * 2026-09-15: Added approximation methods for grayscale and 
 * Sobel processing.
 *
 ************************************************************/

#include <cmath>
#include "image_processing.h"

/*----------------------------------------------------------
 * Function: grayscale
 *
 * Description: Converts a color image to grayscale
 *
 * param frame: Reference to the input BGR color image
 *
 * return: An 8-bit, single-channel grayscale image
 *
 *---------------------------------------------------------*/
cv::Mat grayscale(const cv::Mat& frame)
{
    cv::Mat grayFrame(frame.rows, frame.cols, CV_8UC1);
    for (int y = 0; y < frame.rows; ++y)
    {
        for (int x = 0; x < frame.cols; ++x)
        {
            // Get the pixel at row y and column x
            cv::Vec3b pixel = frame.at<cv::Vec3b>(y, x);

            // Calculate the grayscale value
            unsigned char grayValue = static_cast<unsigned char>(0.2126 * pixel[2] + 0.7152 * pixel[1] + 0.0722 * pixel[0]);

            // Calculate the grayscale value using fixed point integer approximation
            //unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;

            // Set the pixel to the new grayscale value
            grayFrame.at<unsigned char>(y, x) = grayValue;
        }
    }
    return grayFrame;
}

/*----------------------------------------------------------
 * Function: sobelFilter
 *
 * Description: Applies a Sobel edge-detection filter to an
 *              8-bit grayscale image.
 *
 * param grayFrame: Reference to the input grayscale image
 *
 * return: An 8-bit, single-channel Sobel edge image that is
 *         two rows and two columns smaller than the input
 *
 *---------------------------------------------------------*/
cv::Mat sobelFilter(const cv::Mat& grayFrame)
{
    cv::Mat sobelFrame(grayFrame.rows - 2, grayFrame.cols - 2, CV_8UC1);

    for (int y = 1; y < grayFrame.rows - 1; ++y)
    {
        for (int x = 1; x < grayFrame.cols - 1; ++x)
        {
            // Compute gradient in x direction
            int gx =
                (grayFrame.at<unsigned char>(y - 1, x + 1)
                + 2 * grayFrame.at<unsigned char>(y, x + 1)
                + grayFrame.at<unsigned char>(y + 1, x + 1))
                -
                (grayFrame.at<unsigned char>(y - 1, x - 1)
                + 2 * grayFrame.at<unsigned char>(y, x - 1)
                + grayFrame.at<unsigned char>(y + 1, x - 1));

            // Compute gradient in y direction
            int gy =
                (grayFrame.at<unsigned char>(y + 1, x - 1)
                + 2 * grayFrame.at<unsigned char>(y + 1, x)
                + grayFrame.at<unsigned char>(y + 1, x + 1))
                -
                (grayFrame.at<unsigned char>(y - 1, x - 1)
                + 2 * grayFrame.at<unsigned char>(y - 1, x)
                + grayFrame.at<unsigned char>(y - 1, x + 1));

            // Compute gradient magnitude
            int magnitude = static_cast<int>(std::sqrt(gx * gx + gy * gy));

            //Approximate magnitude using a faster method
            // Compute absolute values of gradients
            // int abs_gx = (gx < 0) ? -gx : gx;
            // int abs_gy = (gy < 0) ? -gy : gy;
            // // Compute magnitude using approximation
            // int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);

            // // Clamp to [0, 255]
            // if (magnitude > 255)
            // {
            //     magnitude = 255;
            // }

            // Store in output image
            sobelFrame.at<unsigned char>(y - 1, x - 1) =
                static_cast<unsigned char>(magnitude);
        }
    }

    return sobelFrame;
}