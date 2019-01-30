help:
	@cat Makefile

DOCKER=nvidia-docker

build:
	docker build -t rossi/segmentation .

bash: build
	$(DOCKER) run -it -v $(shell pwd):/workspace -w /workspace rossi/segmentation bash

notebook: build
	$(DOCKER) run -it -v $(shell pwd):/workspace -w /workspace rossi/segmentation
