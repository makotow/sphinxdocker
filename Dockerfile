FROM ubuntu:16.04

RUN locale-gen en_US.UTF-8
ENV LANG en_US.utf8
ENV LC_ALL en_US.UTF-8
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
            python-sphinx \
            make \
            && rm -rf /var/lib/apt/lists/*

RUN mkdir /docs/
WORKDIR /docs/

# Define default command.
CMD make html
