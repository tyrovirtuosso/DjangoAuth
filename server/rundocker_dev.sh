#!/bin/bash

# Check if the Docker image exists
if docker image inspect learneasyapp-server &> /dev/null; then
    echo "Docker image 'learneasyapp-server' already exists."

    # Get the absolute path to the directory containing this script
    SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

    # Define the Docker run command with the path to your project directory
    DOCKER_COMMAND="docker run -p 8000:8000 -it --rm -v \"$SCRIPT_DIR\":/app learneasyapp-server"

    # Run the Docker command
    eval "$DOCKER_COMMAND"

else
  echo "Docker image 'learneasyapp-server' does not exist. Building the image..."

  # Build the Docker image
  docker buildx install
  docker build -t learneasyapp-server .

  # Get the absolute path to the directory containing this script
  SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

  # Define the Docker run command with the path to your project directory
  DOCKER_COMMAND="docker run -p 8000:8000 -it --rm -v \"$SCRIPT_DIR\":/app learneasyapp-server"

  # Run the Docker command
  eval "$DOCKER_COMMAND"

fi

# Make sure to make the script executable by running `chmod +x rundocker_dev.sh`
