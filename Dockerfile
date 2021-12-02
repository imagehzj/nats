FROM ttbb/base

WORKDIR /opt/sh

ARG TARGETARCH

RUN wget https://github.com/nats-io/nats-server/releases/download/v2.6.5/nats-server-v2.6.5-linux-$TARGETARCH.tar.gz && \
mkdir nats && \
tar -xf nats-server-v2.6.5-linux-$TARGETARCH.tar.gz -C /opt/sh/nats --strip-components 1 && \
rm -rf nats-server-v2.6.5-linux-$TARGETARCH.tar.gz

ENV NATS_HOME /opt/sh/nats

WORKDIR /opt/sh/nats