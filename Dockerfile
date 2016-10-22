#
# Dockerfile for cpuminer
# usage: docker run 0e8bee02/cpuminer-xzc --url xxxx --user xxxx --pass xxxx
# ex: docker run 0e8bee02/cpuminer-xzc -a lyra2rev2 -o stratum+tcp://xzc.suprnova.cc:5595 --user username.worker1 --pass abcdef
#
#

FROM    ubuntu:16.10

RUN    apt-get update -qq

RUN apt-get install -y automake \
   autoconf \
   pkg-config \
   libcurl4-openssl-dev \
   libjansson-dev \
   libssl-dev \
   libgmp-dev \
   gcc \
   g++ \
   git

RUN git clone https://github.com/ocminer/cpuminer-xzc

WORKDIR /cpuminer-xzc

RUN ./build.sh

ENTRYPOINT ["./cpuminer"]
