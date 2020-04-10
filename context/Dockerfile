# phlax/debian-build
#
# VERSION       0.0.1

ARG BUILD_FROM=debian:buster-slim

# Root stage
FROM $BUILD_FROM as root
MAINTAINER Ryan Northey <ryan@synca.io>

ARG BUILD_PKGS="\
	apt-src \
	bison \
	build-essential \
	debian-keyring \
	devscripts \
	dh-golang \
	dh-python \
	equivs \
	gperf \
	groff \
	libjpeg62-turbo-dev \
	libfreetype6-dev \
	liblcms2-dev \
	libprotobuf-c-dev \
	libprotobuf-dev \
	libtiff5-dev \
	libwebp-dev \
	libxml2-dev \
	libxslt-dev \
	protobuf-c-compiler \
	protobuf-compiler \
	python3-dev \
	python-protobuf \
	packaging-dev \
	sudo \
	texinfo \
	zlib1g-dev "
ARG BUILD_USERNAME="bob"

COPY install /tmp/install
RUN /tmp/install

USER $BUILD_USERNAME
WORKDIR /home/$BUILD_USERNAME
