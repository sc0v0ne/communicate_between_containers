FROM ubuntu:20.04

WORKDIR /application

RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-pip

COPY ./requirements.txt /application/requirements.txt
COPY ./app /application/app
RUN pip install --no-cache-dir --upgrade -r /application/requirements.txt

RUN mkdir -p /application/logs

