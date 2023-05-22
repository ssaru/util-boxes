#!/usr/bin/make
SHELL = /bin/sh

UID = $(shell id -u)
GID = $(shell id -g)

IMAGE_NAME = cuda11
CONTAINER_NAME = cuda11
CONTAINER_USERNAME = ubuntu
CONTAINER_PASSWD = ubuntu

build:
	docker build --build-arg user=$(CONTAINER_USERNAME) --build-arg passwd=$(CONTAINER_PASSWD) --build-arg uid=$(UID) --build-arg gid=$(GID) --build-arg display=$(DISPLAY) --tag $(IMAGE_NAME) .

run:
	docker run -i -t -d --shm-size=6G --init \
		-p 8080:7860  \
		--volume ~/Documents:/home/$(CONTAINER_USERNAME)/Documents:rw \
		--gpus '"device=0"' \
		--name $(CONTAINER_NAME) $(IMAGE_NAME)

exec:
	docker exec -it $(CONTAINER_NAME) /bin/bash

rm:
	docker stop $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME)
