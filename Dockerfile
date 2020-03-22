FROM python:3-alpine

MAINTAINER Alexey Petrenko <mr.alexey.petrenko@gmail.com>
ARG ANSIBLE_VERSION

RUN apk add --update-cache openssh-client \
  && apk add --virtual build-dependencies python3-dev build-base libffi-dev openssl-dev \
  && pip3 install --upgrade pip --no-cache-dir \
  && pip3 install "ansible==$ANSIBLE_VERSION" --no-cache-dir \
  && apk del build-dependencies \
  && rm -rf /var/cache/apk/*

CMD ["ansible", "--version"]
