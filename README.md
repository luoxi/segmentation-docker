# segmentation-docker

## Installing Docker
For GPU support install NVIDIA drivers (ideally latest) and
[nvidia-docker](https://github.com/NVIDIA/nvidia-docker).


## Running the container

We are using `Makefile` to simplify docker commands within make commands.

Build the container and start a Jupyter Notebook

    $ make notebook

Build the container and start a bash

    $ make bash

Without GPU(nvidia-docker)

    $ make bash DOCKER=docker

Prints all make tasks

    $ make help
