#!/usr/bin/make -f

SHELL := /bin/bash


image:
	docker build -t phlax/debian-build context

hub-image:
	docker push phlax/debian-build
