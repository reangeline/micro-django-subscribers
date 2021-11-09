FROM python:3.9.7-alpine3.14

RUN apk add bash

RUN adduser --disabled-password --uid 1000 python

ENV PYTHONUNBUFFERED=1

USER python

RUN mkdir /home/python/app

WORKDIR /home/python/app
COPY requirements.txt /home/python/app/
RUN pip install -r requirements.txt
COPY . /home/python/app/