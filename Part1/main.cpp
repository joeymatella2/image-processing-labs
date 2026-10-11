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
 
#include <iostream>
#include <chrono>
#include "image_processing.h"

int main()
{
    // Open the video file
    cv::VideoCapture video("../video/bbb_sunflower_2160p_60fps_normal.mp4");

    // Make sure the video opened successfully
    if (!video.isOpened())
    {
        std::cerr << "Error: Could not open video.\n";
        return 1;
    }

    // This Mat will hold one frame at a time
    cv::Mat frame;

    // Benchmark variables
    double totalGrayTime = 0.0;
    double totalSobelTime = 0.0;
    int frameCount = 0;
    
    using Clock = std::chrono::steady_clock;

    auto loopStart = Clock::now();

    while (true)
    {
        // Read the next frame from the video
        bool success = video.read(frame);

        // Stop if there are no more frames
        if (!success || frame.empty())
        {
            break;
        }


        // Convert the frame to grayscale and time the operation
        auto grayStart = Clock::now();

        cv::Mat grayFrame = grayscale(frame);

        auto grayEnd = Clock::now();

        // Apply the Sobel filter and time the operation
        auto sobelStart = Clock::now();

        cv::Mat sobelFrame = sobelFilter(grayFrame);

        auto sobelEnd = Clock::now();

        // Compute the elapsed time for each operation in milliseconds
        double grayTime =
            std::chrono::duration<double, std::milli>(grayEnd - grayStart).count();

        double sobelTime =
            std::chrono::duration<double, std::milli>(sobelEnd - sobelStart).count();

        // Update benchmark totals
        totalGrayTime += grayTime;
        totalSobelTime += sobelTime;
        ++frameCount;

        // Display the current frame
        cv::imshow("Video", sobelFrame);

        // Wait briefly and check whether the user pressed a key.
        // 1 means wait approximately 1 millisecond.
        if (cv::waitKey(1) >= 0)
        {
            break;
        }
    }

    auto loopEnd = Clock::now();

    // Explicitly release the video file
    video.release();

    // Close any OpenCV windows
    cv::destroyAllWindows();

    // Prevent division by zero in case no frames were processed
    if (frameCount == 0)
    {
        std::cerr << "Error: No frames were processed.\n";
        return 1;
    }

    // Calculate average times and FPS
    double totalLoopTime =
        std::chrono::duration<double>(loopEnd - loopStart).count();

    double endToEndFps = frameCount / totalLoopTime;

    double avgGrayTime = totalGrayTime / frameCount;
    double avgSobelTime = totalSobelTime / frameCount;

    double avgProcessingTime = avgGrayTime + avgSobelTime;

    double sobelFps = 1000.0 / avgSobelTime;
    double processingFps = 1000.0 / avgProcessingTime;

    // Print benchmark results
    std::cout << "Frames processed: " << frameCount << '\n';
    std::cout << "Average grayscale time: " << avgGrayTime << " ms\n";
    std::cout << "Average Sobel time: " << avgSobelTime << " ms\n";
    std::cout << "Average processing time: " << avgProcessingTime << " ms\n";
    std::cout << "Sobel FPS: " << sobelFps << '\n';
    std::cout << "Processing FPS: " << processingFps << '\n';
    std::cout << "End-to-end FPS: " << endToEndFps << '\n';

    return 0;
}