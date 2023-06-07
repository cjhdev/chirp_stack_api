VERSION := $(shell cat version)
UPSTREAM := ruby:3.2.2-bullseye
NAME := chirp-stack-api-generator

default:
	docker build -t $(NAME):$(VERSION) .

generate: default
	docker run -ti --rm --user 1000:1000 -v $(shell pwd)/lib:/generator/lib $(NAME):$(VERSION)

inspect:
	docker run -ti --rm --entrypoint=/bin/bash $(NAME):$(VERSION)

.PHONY: \
  default \
  inspect \
  generate
