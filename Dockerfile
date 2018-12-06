FROM diuis/docker-emsdk-opencv3-wasm:v1.1.0

USER root
RUN mkdir /eigen && chown appuser /eigen

USER appuser
RUN wget https://bitbucket.org/eigen/eigen/get/3.3.5.zip -P /home/appuser && \
    unzip /home/appuser/3.3.5.zip -d /eigen/ && \
    rm /home/appuser/3.3.5.zip