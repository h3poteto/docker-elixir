FROM elixir:1.7.3-slim

RUN set -ex && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    build-essential && \
    rm -rf /var/lib/apt/lists/*
