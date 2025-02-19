#!/bin/bash

# is the project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project_name>"
  exit 1
fi

PROJECT_NAME=$1

mkdir -p "$PROJECT_NAME/bin"
mkdir -p "$PROJECT_NAME/include"
mkdir -p "$PROJECT_NAME/resources"
mkdir -p "$PROJECT_NAME/src"

cat <<EOL >"$PROJECT_NAME/src/main.c"
#include <stdio.h>

int main() {
    printf("Hello, World!\nEdit src/main.c and run: make run\n to recompile and run program.");
    return 0;
}
EOL

cat <<EOL >"$PROJECT_NAME/makefile"
# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -Iinclude -L/usr/local/lib -lraylib -lm -lpthread -ldl -lGL

# Source and executable
SRC = src/main.c
EXEC = bin/\$(shell basename "\$(PWD)")

# Default target
all: \$(EXEC)

# Rule to build the executable
\$(EXEC): \$(SRC)
	\$(CC) \$(CFLAGS) \$^ -o \$@

# Target to run the game
run: \$(EXEC)
	./\$(EXEC)

# Clean up build files
clean:
	rm -f \$(EXEC)
EOL

# Create a compile_commands.json file
echo "[ if you are using clangd as an lsp you will need to install bear and run make bear to generate a compile_commands.json for clangd to recogize the path to your Project.]" >"$PROJECT_NAME/compile_commands.json"

echo "Project '$PROJECT_NAME' initialized successfully!"
