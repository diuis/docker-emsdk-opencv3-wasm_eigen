FROM diuis/docker-emsdk-opencv3-wasm:v1.0.0

# RUN wget -nv https://bitbucket.org/eigen/eigen/get/3.3.7.tar.gz -O /home/appuser/eigen-3.3.7.tar.gz && \
#     mkdir /home/appuser/eigen && \
#     tar xzf /home/appuser/eigen-3.3.7.tar.gz -C /home/appuser/eigen && \
#     rm /home/appuser/3.3.5.zip && \
#     mkdir /eigen/eigen-eigen-b3f3d4950030/build && \
#     cd /eigen/eigen-eigen-b3f3d4950030/build && \
#     cmake .. && \
#     make install && \
#     rm -Rf /eigen

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libeigen3-dev && \
    apt-get autoremove && apt-get clean