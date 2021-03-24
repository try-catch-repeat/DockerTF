FROM ubuntu:20.04

ENV TZ=Europe/Athens

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	libopencv-dev \
        python3-pip \
	python3-opencv && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install tensorflow && \
    pip3 install numpy \
        pandas \
        sklearn \
        matplotlib \
        seaborn \
        jupyter \
        pyyaml \
        h5py && \
    pip3 install keras --no-deps && \
    pip3 install opencv-python && \
    pip3 install imutils

RUN \
   echo 'alias python="/usr/bin/python3"' >> ~/.bashrc && \
   echo 'alias pip="/usr/bin/pip3"' >> ~/.bashrc && \
   . /root/.bashrc