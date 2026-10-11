CXX = g++
CXXFLAGS = -Wall -Wextra -O0 -std=c++17
OPENCV = $(shell pkg-config --cflags --libs opencv4)

main: main.cpp image_processing.cpp image_processing.h
	$(CXX) $(CXXFLAGS) main.cpp image_processing.cpp -o main $(OPENCV)

clean:
	rm -f main