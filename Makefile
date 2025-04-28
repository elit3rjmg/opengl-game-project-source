CXX = g++
CXXFLAGS = -std=c++17 -Wall
LDFLAGS = -lraylib -lGL -lm -lpthread -ldl -lGLEW -lglfw

SRC = src/main.cpp
OBJ = $(SRC:.cpp=.o)

TARGET = game

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(OBJ) -o $(TARGET) $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

