FROM diuis/docker-emsdk-opencv3-installed-js:18.10-python2

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libeigen3-dev && \
    apt-get autoremove && apt-get clean
