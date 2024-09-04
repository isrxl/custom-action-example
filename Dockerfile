# Use an official image as a parent image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
  curl \
  jq

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Set the script as executable
RUN chmod +x /entrypoint.sh

# Set the entry point to the script
ENTRYPOINT ["/entrypoint.sh"]
