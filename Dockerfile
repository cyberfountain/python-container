FROM phusion/baseimage:latest

# Default Shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    checkinstall \
    libreadline-gplv2-dev \
    libncursesw5-dev \
    libssl-dev \
    libsqlite3-dev \
    tk-dev \
    libgdbm-dev \
    libc6-dev \
    libbz2-dev \
    zlib1g-dev \
    openssl \
    libffi-dev \
    python3-dev \
    python3-setuptools \
    wget

RUN wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
RUN tar xvf Python-3.7.0.tar.xz
RUN cd Python-3.7.0 && ./configure --enable-shared./configure --enable-shared \
            --prefix=/usr/local \
            LDFLAGS="-Wl,--rpath=/usr/local/lib"
RUN cd Python-3.7.0 && make install

RUN ln -s /usr/bin/python3.7 /bin/python3

# Update Pip
RUN pip3 install --upgrade pip

# Update Setup Tools
RUN pip3 install --upgrade setuptools
