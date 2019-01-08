FROM diuis/docker-emsdk-opencv3-wasm:v1.0.1

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libeigen3-dev && \
    apt-get autoremove && apt-get clean