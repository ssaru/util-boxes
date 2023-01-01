#!/usr/bin/make
SHELL = /bin/sh

UID = $(shell id -u)
GID = $(shell id -g)

IMAGE_NAME = cuda12
CONTAINER_NAME = cuda12
USERNAME = ubuntu
PASSWD = ubuntu

build:
	docker build --build-arg user=$(USERNAME) --build-arg passwd=$(PASSWD) --build-arg uid=$(UID) --build-arg gid=$(GID) --build-arg display=$(DISPLAY) --tag $(IMAGE_NAME) .

run:
	docker run -i -t -d --shm-size=6G --init \
		--gpus '"device=0"' \
		--name $(CONTAINER_NAME) $(IMAGE_NAME)

exec:
	docker exec -it $(CONTAINER_NAME) /bin/bash
