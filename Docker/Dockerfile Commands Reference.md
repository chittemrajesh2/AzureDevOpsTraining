# Dockerfile Commands Reference

This document provides an overview of various Dockerfile commands and their purposes, along with examples of a basic Dockerfile and a comprehensive Dockerfile using all components.

## Dockerfile Commands Table

| Command       | Description                                                                                  |
|---------------|----------------------------------------------------------------------------------------------|
| `FROM`        | Specify the Docker image name to build your image from.                                       |
| `MAINTAINER`  | Specify the person who creates the Docker image.                                              |
| `CMD`         | Execute commands when your Docker image is deployed.                                          |
| `RUN`         | Execute commands during the image build process.                                              |
| `LABEL`       | Specify metadata information of the Docker image.                                             |
| `EXPOSE`      | Specify the network port for the Docker container.                                            |
| `ENV`         | Set environment variables with key and value.                                                 |
| `ARG`         | Set environment variables with key and value during the image build.                          |
| `ADD`         | Copy files and directories from your host to the Docker image.                                |
| `COPY`        | Copy files or directories from your host to the Docker image.                                 |
| `ENTRYPOINT`  | Specify commands that will execute when the Docker container starts.                          |
| `VOLUME`      | Create or mount a volume to the Docker container.                                             |
| `USER`        | Specify the user name to use within the Docker container.                                      |
| `WORKDIR`     | Set the working directory within the Docker container.                                         |
| `STOPSIGNAL`  | Define the system call signal that will be sent to the container to exit.                     |
| `SHELL`       | Set the default shell to be used within the Docker container.                                  |
| `HEALTHCHECK` | Check the container's health by running a command inside the container.                       |
