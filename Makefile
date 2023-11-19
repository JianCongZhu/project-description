CC = gcc
CFLAGS = -Wall -O3
LDFLAGS =

SRC = main.c 3dHLS.c  # Add more source files if needed
OBJ = $(SRC:.c=.o)
EXECUTABLE = 3dhls

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(LDFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXECUTABLE)
