#!/bin/bash

# Script to install Ollama and Mistral 7B model
set -e  # Exit on any error

echo "Starting Ollama and Mistral 7B installation..."

# Check if running on macOS or Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS"
    OS="mac"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux"
    OS="linux"
else
    echo "Unsupported operating system: $OSTYPE"
    echo "This script supports macOS and Linux only."
    exit 1
fi

# Download and install Ollama
echo "Downloading and installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

# Wait a moment for installation to complete
sleep 2

# Check if ollama command is available
if ! command -v ollama &> /dev/null; then
    echo "Ollama installation failed or not in PATH"
    echo "You may need to restart your terminal or add Ollama to your PATH"
    exit 1
fi

echo "Ollama installed successfully!"

# Start Ollama service (this will run in background)
echo "Starting Ollama service..."
ollama serve &
OLLAMA_PID=$!

# Wait for Ollama to start up
echo "Waiting for Ollama service to start..."
sleep 5

# Download and install Mistral 7B model
echo "Downloading Mistral 7B model (this may take a while)..."
ollama pull mistral

echo "Mistral 7B model downloaded successfully!"

# Start interactive chat with Mistral
echo "Starting Mistral 7B chat..."
echo "Type 'exit' or press Ctrl+C to quit the chat"
echo "Starting chat in 3 seconds..."
sleep 3

ollama run mistral

# Clean up background process when script exits
trap "kill $OLLAMA_PID 2>/dev/null || true" EXIT
