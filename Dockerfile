FROM ubuntu:24.04
RUN apt-get update && apt-get install -y git make gcc wget
WORKDIR /opt
RUN git clone https://github.com/osqzss/gps-sdr-sim.git
WORKDIR /opt/gps-sdr-sim
RUN gcc gpssim.c -lm -O3 -o gps-sdr-sim
RUN chmod +x gps-sdr-sim
RUN ln -s $(pwd)/gps-sdr-sim /usr/local/bin/gps-sdr-sim
VOLUME /root/data
WORKDIR /root/data
ENTRYPOINT ["gps-sdr-sim"]