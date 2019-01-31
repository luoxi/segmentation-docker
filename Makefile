help:
	@cat Makefile

DOCKER=nvidia-docker

build:
	docker build -t rossi/segmentation .

bash:
	$(DOCKER) run -it -v $(shell pwd):/workspace -w /workspace rossi/segmentation bash

notebook:
	$(DOCKER) run -it -p 8888:8888 -v $(shell pwd):/workspace -w /workspace rossi/segmentation
