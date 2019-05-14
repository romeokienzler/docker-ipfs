FROM ubuntu:latest

RUN apt update

RUN apt install -y wget

RUN wget https://dist.ipfs.io/go-ipfs/v0.4.20/go-ipfs_v0.4.20_linux-amd64.tar.gz

RUN tar xvfz go-ipfs_v0.4.20_linux-amd64.tar.gz

RUN mv ./go-ipfs/ipfs /usr/local/bin/

RUN useradd -d /home/ipfs ipfs

RUN mkdir /home/ipfs

RUN chown ipfs -R /home/ipfs/

USER ipfs
