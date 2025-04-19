# Compiler and flags
CC = gcc
CFLAGS = -I/usr/include/SDL2 -Wall -Wextra -g
LDFLAGS = -lSDL2 -lSDL2_image -lSDL2_ttf -lpthread

# Directories
SRC_DIR = .
BIN_DIR = bin

# Source files
CLIENT_SRC = $(SRC_DIR)/sh13.c
SERVER_SRC = $(SRC_DIR)/server.c

# Executables
CLIENT_BIN = $(BIN_DIR)/sh13
SERVER_BIN = $(BIN_DIR)/server

# Default target
all: $(CLIENT_BIN) $(SERVER_BIN)

# Create bin directory if it doesn't exist
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Compile client
$(CLIENT_BIN): $(CLIENT_SRC) | $(BIN_DIR)
	$(CC) $(CFLAGS) $(CLIENT_SRC) -o $(CLIENT_BIN) $(LDFLAGS)

# Compile server
$(SERVER_BIN): $(SERVER_SRC) | $(BIN_DIR)
	$(CC) $(CFLAGS) $(SERVER_SRC) -o $(SERVER_BIN) -lpthread

# Run the server in a new terminal
run-server: $(SERVER_BIN)
	gnome-terminal -- bash -c "$(SERVER_BIN); exec bash"

# Run the client in a new terminal
run-client: $(CLIENT_BIN)
	gnome-terminal -- bash -c "$(CLIENT_BIN); exec bash"

# Clean build artifacts
clean:
	rm -rf $(BIN_DIR)

.PHONY: all clean run-server run-client