# Recommended by vLLM documentation:
# https://vllm.readthedocs.io/en/latest/getting_started/installation.html
FROM nvcr.io/nvidia/pytorch:24.03-py3 as base
# FROM nvcr.io/nvidia/pytorch:23.09-py3 as base
# FROM nvidia/cuda:12.2.0-devel-ubuntu22.04 as base

ENV DEBIAN_FRONTEND=noninteractive

# Common dependencies
RUN apt-get update
RUN apt-get install -y git

# Python 3.9
RUN apt-get update
RUN apt-get install -y python3.9-full
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1
RUN update-alternatives --set python /usr/bin/python3.9
RUN update-alternatives --set python3 /usr/bin/python3.9
RUN curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
  python get-pip.py --force-reinstall && \
  rm get-pip.py

FROM base as app

EXPOSE 8000

WORKDIR /workspace

RUN git clone https://github.com/MeetKai/functionary.git
WORKDIR /workspace/functionary
RUN pip install -r requirements.txt
RUN pip install vllm
WORKDIR /workspace
COPY ./start.sh /workspace/start.sh

ENTRYPOINT [ "./start.sh" ]
