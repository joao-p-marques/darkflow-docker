FROM tensorflow/tensorflow:1.5.0-py3

RUN apt-get update && apt-get install -y \
    python-pip \
    git \
    libsm6 \
    libxext6 \
    libxrender-dev \
    wget

RUN pip install --upgrade pip
RUN pip install opencv-python
RUN pip install cython

RUN cd "/" && \
    git clone https://github.com/thtrieu/darkflow.git &&\
    cd darkflow && \
    pip install . 

COPY . /data/

WORKDIR /data
