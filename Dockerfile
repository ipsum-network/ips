FROM ubuntu:16.04

RUN apt-get update && \
    apt-get --no-install-recommends --yes install \
         git \
         automake \
         build-essential \
         libtool \
         autotools-dev \
         autoconf \
         pkg-config \
         libssl-dev \ 
         libboost-all-dev \
         libevent-dev \
         bsdmainutils \
         vim \
         software-properties-common

RUN add-apt-repository ppa:bitcoin/bitcoin && \
    apt-get update && \
    apt-get --no-install-recommends --yes install \
          libdb4.8-dev \
          libdb4.8++-dev \
          libminiupnpc-dev 

WORKDIR /ips

COPY . .

RUN ./autogen.sh && \
    ./configure && \
    make && \
    strip src/ipsd && \
    strip src/ips-cli

VOLUME ["/root/.ips"]

EXPOSE 22331

CMD /ips/src/ipsd && tail -f /root/.ips/debug.log
