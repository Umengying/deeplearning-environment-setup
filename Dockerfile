FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
        build-essential \
        pkg-config \
        software-properties-common \
        wget \
        vim \
        git \
        gcc \
        g++ \
        cmake \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
