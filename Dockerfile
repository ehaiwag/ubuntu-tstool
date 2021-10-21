FROM ubuntu
RUN apt update
RUN apt install -y strace tcpdump iproute2 ethtool sysstat curl iputils-ping dnsutils \
    && rm -rf /var/lib/apt/lists/* && \
    apt clean
