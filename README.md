# Alpine Docker with dumb-init

[Alpine Linux](https://www.alpinelinux.org/) is a lightweight distribution that uses `BusyBox` and `musl` as the base system. As such, the base Alpine Docker image is very small, roughly 5.6MB, and only contains the bare minimum to get up and running.

This image is based on the base [Alpine dockr image](https://hub.docker.com/r/library/alpine) plus Yelp's [`dumb-init`](https://github.com/Yelp/dumb-init) for better signal handling.

## Build a new image

Build with the default Alpine version 3.

```sh
docker build --rm --tag=alpine-dumb-init .
```

Build with a specific Alpine version:

```sh
docker build --build-arg="ALPINE_VERSION=3.18" --rm --tag=alpine-dumb-init . 
```

## Start a new container from the newly created image

```sh
docker run -it --rm alpine-dumb-init /bin/sh
```

## Derive a new Docker image from the current one

```Dockerfile
FROM alpine-dumb-init

RUN ...

CMD [...]
```
