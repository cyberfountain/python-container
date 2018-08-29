FROM phusion/baseimage:latest

# Default Shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Make Default Symlink For Python
RUN ln -s /usr/bin/python3 /bin/python

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        libssl-dev \
        libffi-dev \
        python3-dev \
        python3-setuptools \
        wget \
		tk-dev \
		uuid-dev \
        python3-pip

# Update Pip
RUN pip3 install --upgrade pip

# Create Working Directory
RUN mkdir /code

# Set Working Directory
WORKDIR /code

EXPOSE 5000