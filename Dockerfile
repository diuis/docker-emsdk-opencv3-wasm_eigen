FROM diuis/docker-emsdk-opencv3-wasm:opencv3.4.5

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libeigen3-dev && \
    apt-get autoremove && apt-get clean
