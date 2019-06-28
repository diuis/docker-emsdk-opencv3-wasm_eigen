FROM diuis/docker-emsdk-opencv3-installed-js:18.10-python2

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libeigen3-dev git && \
    apt-get autoremove && apt-get clean
RUN ln -s /usr/include/eigen3 /usr/local/include/eigen3
USER appuser
