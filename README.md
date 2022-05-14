# Alpine Docker with dumb-init

[Alpine Linux](https://www.alpinelinux.org/) is a lightweight distribution that uses `BusyBox` and `musl` as the base system. As such, the base Alpine Docker image is very small, roughly 5.6MB, and only contains the bare minimum to get up and running.

This image is based on the base [Alpine dockr image](https://hub.docker.com/r/library/alpine) plus Yelp's [`dumb-init`](https://github.com/Yelp/dumb-init) for better signal handling.


## Usage

Build a new image:

```sh
docker build --rm --tag=alpine-init .
```

## Start a new container from the newly created image

```sh
docker run -it --rm alpine-init /bin/sh
```

## Derive a new Docker image from the current one

```Dockerfile
FROM alpine-init

RUN ...

CMD [...]
```
