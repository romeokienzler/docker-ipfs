# docker-ipfs

A very simple IPFS node - meant for running an IPFS node on a server and encapsulating it within a container for maintainability and security reasons



## build / install

`git clone https://github.com/romeokienzler/docker-ipfs.git`

`cd docker-ipfs`

`docker build -t ipfs-simple .`

`docker volume create ipfs-vol`

`chown -R 1000:1000 /var/lib/docker/volumes/ipfs-vol`

`docker run -it --mount source=ipfs-vol,target=/home/ipfs/.ipfs/ ipfs-simple ipfs init --profile server`

## run

`docker run -d -p 4001:4001 --mount source=ipfs-vol,target=/home/ipfs/.ipfs/ ipfs-simple ipfs daemon`

