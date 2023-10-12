#!/bin/bash

# Check if the Docker image exists
if docker image inspect learneasyapp_server:dev &> /dev/null; then
    echo "Docker image 'learneasyapp_server:dev' already exists."

    # Get the absolute path to the directory containing this script
    SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

    # Define the Docker run command with the path to your project directory
    DOCKER_COMMAND="docker run -p 8000:8000 -it --rm -v \"$SCRIPT_DIR\":/app learneasyapp_server:dev"

    # Run the Docker command
    eval "$DOCKER_COMMAND"

else
  echo "Docker image 'learneasyapp_server:dev' does not exist. Building the image..."

  # Build the Docker image
  docker buildx install
  docker build -t learneasyapp_server:dev .

  # Get the absolute path to the directory containing this script
  SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

  # Define the Docker run command with the path to your project directory
  DOCKER_COMMAND="docker run -p 8000:8000 -it --rm -v \"$SCRIPT_DIR\":/app learneasyapp_server:dev"

  # Run the Docker command
  eval "$DOCKER_COMMAND"

fi

# Make sure to make the script executable by running `chmod +x rundocker_dev.sh`
