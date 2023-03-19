# Full cycle - Go Hello World docker container

This is a simple example of how to build a docker container with a Go application.

This image uses a multi-stage build to create a small image of
a simple Go application that prints "Hello World".

## Build

To build the image, run:

`docker build -t magrassi/fullcycle .`

## Run

To run the container, run:

`docker run --rm magrassi/fullcycle`
