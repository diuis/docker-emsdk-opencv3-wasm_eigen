FROM diuis/docker-emsdk-opencv3-installed-js:19.04-python2-emsdk1.38.42-opencv3.4.7

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libeigen3-dev \
    ffmpeg libavcodec-dev libavutil-dev libavformat-dev && \
    apt-get autoremove && apt-get clean
RUN ln -s /usr/include/eigen3 /usr/local/include/eigen3
USER appuser
