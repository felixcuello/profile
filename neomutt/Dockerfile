FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    neomutt \
    neovim \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

