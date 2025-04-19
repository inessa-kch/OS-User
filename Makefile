# Compiler and flags
CC = gcc
CFLAGS = -I/usr/include/SDL2 -Wall -Wextra -g
LDFLAGS = -lSDL2 -lSDL2_image -lSDL2_ttf -lpthread


# Source files
CLIENT_SRC = src/sh13.c
SERVER_SRC = src/server.c

# Executables
CLIENT_BIN = bin/sh13
SERVER_BIN = bin/server

# Default target
all: $(CLIENT_BIN) $(SERVER_BIN)

# Create bin directory if it doesn't exist
bin:
	mkdir -p bin

# Compile client
$(CLIENT_BIN): $(CLIENT_SRC) | bin
	$(CC) $(CFLAGS) $(CLIENT_SRC) -o $(CLIENT_BIN) $(LDFLAGS)

# Compile server
$(SERVER_BIN): $(SERVER_SRC) | bin
	$(CC) $(CFLAGS) $(SERVER_SRC) -o $(SERVER_BIN) -lpthread

# Clean build artifacts
clean:
	rm -rf bin

.PHONY: all clean