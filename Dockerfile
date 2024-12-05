FROM ubuntu:latest

SHELL ["/bin/bash", "-c"]
RUN apt update && apt install -y curl bash git tar gzip libc++-dev wget nano jq

RUN curl -L noirup.dev | bash && \
    curl -L bbup.dev | bash && \
    export PATH="/root/.nargo/bin:$PATH" && \
    export PATH="/root/.nvm/versions/node/v22.12.0/bin:$PATH" && \
    noirup && \
    bbup

COPY . .
