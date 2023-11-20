CC = g++
CFLAGS = -Wall -std=c++11

SRCS = 3Dhls.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = 3Dhls

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
