CC = g++
CFLAGS = -Wall -std=c++11

SRCS = 3dHLS.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = 3dhls

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
