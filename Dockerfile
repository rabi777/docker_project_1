FROM python:3.6-alpine

RUN apk add --no-cache --update \
    build-base \
    postgresql-dev \
    bash \
    && rm -rf /var/cache/apk/*

RUN mkdir /test_app
WORKDIR /test_app

COPY requirements.txt /test_app

RUN pip3 install --upgrade pip \
    && pip install -r requirements.txt

