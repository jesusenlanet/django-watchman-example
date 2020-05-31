FROM alpine

ENV PYTHONUNBUFFERED 1

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update --no-cache && \
    apk upgrade && \
    rm -fr /var/cache/apk/*

RUN apk add \
    bash \
    build-base \
    python3-dev \
    py3-pip \
    watchman

RUN mkdir /var/run/watchman/
RUN mkdir /code
COPY requirements.txt /code/
WORKDIR /code

RUN pip3 install setuptools==41.6.0 wheel==0.33.6
RUN pip3 install --upgrade pip && pip install -r requirements.txt
COPY . /code/