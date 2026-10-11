/************************************************************
 * File: main_baseline.cpp
 *
 * Description: Benchmarks the full-frame grayscale and Sobel
 *              baseline at a selected image resolution.
 *
 * Author: Joseph Matella
 ************************************************************/

#include <chrono>
#include <iomanip>
#include <iostream>

#include "image_processing.h"

// Change these values and rerun for each required resolution.
constexpr int TARGET_WIDTH = 3840;
constexpr int TARGET_HEIGHT = 2160;

int main()
{
    cv::VideoCapture video("../video/bbb_sunflower_2160p_60fps_normal.mp4");

    if (!video.isOpened())
    {
        std::cerr << "Error: Could not open video.\n";
        return 1;
    }

    cv::Mat frame;
    cv::Mat resizedFrame(TARGET_HEIGHT, TARGET_WIDTH, CV_8UC3);
    cv::namedWindow("Baseline Sobel", cv::WINDOW_NORMAL);
    cv::resizeWindow("Baseline Sobel", TARGET_WIDTH / 2, TARGET_HEIGHT / 2);

    using Clock = std::chrono::steady_clock;

    double totalGrayTimeMs = 0.0;
    double totalSobelTimeMs = 0.0;
    int frameCount = 0;

    while (true)
    {
        // Video input and resizing are deliberately outside the timed region.
        if (!video.read(frame) || frame.empty())
        {
            break;
        }

        cv::resize(
            frame,
            resizedFrame,
            cv::Size(TARGET_WIDTH, TARGET_HEIGHT));

        const auto grayStart = Clock::now();
        cv::Mat grayFrame = grayscale(resizedFrame);
        const auto grayEnd = Clock::now();

        const auto sobelStart = Clock::now();
        cv::Mat sobelFrame = sobelFilter(grayFrame);
        const auto sobelEnd = Clock::now();

        totalGrayTimeMs +=
            std::chrono::duration<double, std::milli>(grayEnd - grayStart).count();
        totalSobelTimeMs +=
            std::chrono::duration<double, std::milli>(sobelEnd - sobelStart).count();
        frameCount++;

        // Display is outside both timed processing regions.
        cv::imshow("Baseline Sobel", sobelFrame);
        if (cv::waitKey(1) >= 0)
        {
            break;
        }
    }

    video.release();
    cv::destroyAllWindows();

    if (frameCount == 0)
    {
        std::cerr << "Error: No frames were processed.\n";
        return 1;
    }

    const double averageGrayTimeMs = totalGrayTimeMs / frameCount;
    const double averageSobelTimeMs = totalSobelTimeMs / frameCount;
    const double averageProcessingTimeMs =
        averageGrayTimeMs + averageSobelTimeMs;
    const double outputPixelCount =
        static_cast<double>(TARGET_WIDTH - 2) * (TARGET_HEIGHT - 2);
    const double timePerOutputPixelNs =
        averageProcessingTimeMs * 1e6 / outputPixelCount;
    const double processingFps = 1000.0 / averageProcessingTimeMs;
    const std::size_t intermediateStorageBytes =
        static_cast<std::size_t>(TARGET_WIDTH) * TARGET_HEIGHT;

    std::cout << std::fixed << std::setprecision(3);
    std::cout << "Implementation: Full-frame grayscale + Sobel baseline\n";
    std::cout << "Input resolution: " << TARGET_WIDTH << " x "
              << TARGET_HEIGHT << '\n';
    std::cout << "Frames processed: " << frameCount << '\n';
    std::cout << "Intermediate grayscale storage: "
              << intermediateStorageBytes << " bytes\n";
    std::cout << "Average grayscale time: "
              << averageGrayTimeMs << " ms/frame\n";
    std::cout << "Average Sobel time: "
              << averageSobelTimeMs << " ms/frame\n";
    std::cout << "Average processing time: "
              << averageProcessingTimeMs << " ms/frame\n";
    std::cout << "Time per output pixel: "
              << timePerOutputPixelNs << " ns/pixel\n";
    std::cout << "Processing FPS: " << processingFps << '\n';

    return 0;
}
