FROM ubuntu
RUN apt update
RUN apt install -y strace tcpdump iproute2 && rm -rf /var/lib/apt/lists/* && \
    apt clean
