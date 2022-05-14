FROM alpine:latest

LABEL author="hoang.huy.tran@gmail.com"

RUN  apk update && apk add --no-cache dumb-init && rm -rf /var/cache/apk/*

ENTRYPOINT [ "/usr/bin/dumb-init", "--"]
