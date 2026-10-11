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
 * 2026-10-11: Replaced .at() access with pointer access for 
 * grayscale and Sobel Functions
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
    const int rows = frame.rows;
    const int cols = frame.cols;

    cv::Mat grayFrame(rows, cols, CV_8UC1);
    for (int y = 0; y < rows; ++y)
    {
        const uint8_t* row_ptr = frame.ptr<uint8_t>(y);
        uint8_t* gray_row_ptr = grayFrame.ptr<uint8_t>(y);
        for (int x = 0; x < cols; ++x)
        {
            // Get the pixel at row y and column x
            cv::Vec3b pixel = cv::Vec3b(row_ptr[x * 3], row_ptr[x * 3 + 1], row_ptr[x * 3 + 2]);

            // Calculate the grayscale value using fixed point integer approximation
            unsigned char grayValue = (54 * pixel[2] + 183 * pixel[1] + 18 * pixel[0]) >> 8;

            // Set the pixel to the new grayscale value
            gray_row_ptr[x] = grayValue;
        }
    }
    return grayFrame;
}


/*----------------------------------------------------------
 * Function: sobelFilter_ptrAccess
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
    const int rows = grayFrame.rows;
    const int cols = grayFrame.cols;

    cv::Mat sobelFrame(rows - 2, cols - 2, CV_8UC1);
    for (int y = 1; y < rows - 1; ++y)
    {
        const uint8_t* row_ptr_top = grayFrame.ptr<uint8_t>(y - 1);
        const uint8_t* row_ptr_mid = grayFrame.ptr<uint8_t>(y);
        const uint8_t* row_ptr_bot = grayFrame.ptr<uint8_t>(y + 1);
        uint8_t* sobel_row_ptr = sobelFrame.ptr<uint8_t>(y - 1);
        for (int x = 1; x < cols - 1; ++x)
        {
            // Compute gradient in x direction
            int gx =
                (row_ptr_top[x + 1]
                + 2 * row_ptr_mid[x + 1]
                + row_ptr_bot[x + 1])
                -
                (row_ptr_top[x - 1]
                + 2 * row_ptr_mid[x - 1]
                + row_ptr_bot[x - 1]);

            // Compute gradient in y direction
            int gy = 
                (row_ptr_bot[x - 1] 
                + 2 * row_ptr_bot[x]
                + row_ptr_bot[x + 1])
                -
                (row_ptr_top[x - 1]
                + 2 * row_ptr_top[x]
                + row_ptr_top[x + 1]);

            //Approximate magnitude using a faster method
            // Compute absolute values of gradients
            int abs_gx = (gx < 0) ? -gx : gx;
            int abs_gy = (gy < 0) ? -gy : gy;
            // Compute magnitude using approximation
            int magnitude = (abs_gx > abs_gy) ? abs_gx + (abs_gy >> 1) : abs_gy + (abs_gx >> 1);

            // Clamp to [0, 255]
            if (magnitude > 255)
            {
                magnitude = 255;
            }

            // Store in output image
            sobel_row_ptr[x - 1] = static_cast<uint8_t>(magnitude);
        }
    }

    return sobelFrame;
}