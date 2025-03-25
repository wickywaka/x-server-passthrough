# Use an Ubuntu base image
FROM ubuntu:24.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    x11-apps \
    xterm \
    && rm -rf /var/lib/apt/lists/*

# Set the entrypoint to bash
ENTRYPOINT ["xterm"]
