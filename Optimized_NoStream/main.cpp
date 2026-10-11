/************************************************************
 * File: main.cpp
 *
 * Description: Reads frames from a 4K video, converts them
 *              to grayscale, applies a Sobel edge detector,
 *              and displays the processed frames using OpenCV.
 *
 * Author: Joseph Matella
 *
 * Revisions:
 *
 ************************************************************/

#include <chrono>
#include <iomanip>
#include <iostream>

#include "image_processing.h"

#define RESOLUTION_WIDTH 3840
#define RESOLUTION_HEIGHT 2160

int main()
{
    cv::VideoCapture video("../video/bbb_sunflower_2160p_60fps_normal.mp4");

    if (!video.isOpened())
    {
        std::cerr << "Error: Could not open video.\n";
        return 1;
    }

    cv::Mat frame;
    if (!video.read(frame) || frame.empty())
    {
        std::cerr << "Error: No frames were read.\n";
        return 1;
    }

    using Clock = std::chrono::steady_clock;

    double totalGrayTime = 0.0;
    double totalSobelTime = 0.0;
    double totalProcessingTime = 0.0;
    int frameCount = 0;

    cv::Mat resizedFrame;
    cv::Mat sobelFrame;

    const auto loopStart = Clock::now();

    while (true)
    {
        cv::resize(frame, resizedFrame,
                   cv::Size(RESOLUTION_WIDTH, RESOLUTION_HEIGHT));

        const auto grayStart = Clock::now();
        cv::Mat grayFrame = grayscale(resizedFrame);
        const auto grayEnd = Clock::now();

        sobelFrame = sobelFilter(grayFrame);
        const auto sobelEnd = Clock::now();

        totalGrayTime +=
            std::chrono::duration<double, std::milli>(grayEnd - grayStart).count();
        totalSobelTime +=
            std::chrono::duration<double, std::milli>(sobelEnd - grayEnd).count();
        totalProcessingTime +=
            std::chrono::duration<double, std::milli>(sobelEnd - grayStart).count();
        frameCount++;

        cv::imshow("Video", sobelFrame);
        if (cv::waitKey(1) >= 0)
        {
            break;
        }

        if (!video.read(frame) || frame.empty())
        {
            break;
        }
    }

    const auto loopEnd = Clock::now();
    video.release();
    cv::destroyAllWindows();

    if (frameCount == 0)
    {
        std::cerr << "Error: No frames were processed.\n";
        return 1;
    }

    const double averageGrayTime = totalGrayTime / frameCount;
    const double averageSobelTime = totalSobelTime / frameCount;
    const double averageProcessingTime = totalProcessingTime / frameCount;
    const double totalLoopTime =
        std::chrono::duration<double>(loopEnd - loopStart).count();

    std::cout << std::fixed << std::setprecision(3);
    std::cout << "Video resolution: " << RESOLUTION_WIDTH << "x"
              << RESOLUTION_HEIGHT << '\n';
    std::cout << "Frames processed: " << frameCount << '\n';
    std::cout << "Average grayscale time: " << averageGrayTime << " ms\n";
    std::cout << "Average Sobel time: " << averageSobelTime << " ms\n";
    std::cout << "Average combined grayscale + Sobel time: "
              << averageProcessingTime << " ms\n";
    std::cout << "End-to-end FPS: " << frameCount / totalLoopTime << '\n';

    return 0;
}
