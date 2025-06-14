FROM elixir:1.18.4-slim

ENV APP_DIR /var/opt/app

RUN set -x && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    build-essential \
    erlang-dev \
    inotify-tools \
    git \
    curl \
    imagemagick

RUN useradd -m -s /bin/bash elixir
RUN echo 'elixir:password' | chpasswd
RUN mkdir -p ${APP_DIR} && \
    chown -R elixir:elixir ${APP_DIR}

USER elixir

WORKDIR ${APP_DIR}
