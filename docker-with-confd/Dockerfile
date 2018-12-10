FROM alpine:latest

# install my lovely bash
RUN apk add --no-cache bash

# install confd
ARG CONFD_VERSION=0.16.0

RUN wget https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64  \
    && mkdir -p /opt/confd/bin \
    && mv confd-${CONFD_VERSION}-linux-amd64 /opt/confd/bin/confd \
    && chmod +x /opt/confd/bin/confd

ENV PATH="/opt/confd/bin:${PATH}"

RUN /bin/bash -c "mkdir -p /etc/confd/{conf.d,templates}"

# copy example files to docker image
COPY example.conf.toml /etc/confd/conf.d/
COPY example.conf /etc/confd/templates/
COPY hello-world.sh /tmp/

COPY myconfig.toml /etc/confd/conf.d/myconfig.toml
COPY myconfig.conf.tmpl /etc/confd/templates/myconfig.conf.tmpl

RUN mkdir -p /app/example/