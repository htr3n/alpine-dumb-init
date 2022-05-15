FROM alpine:latest

LABEL author="hoang.huy.tran@gmail.com"

RUN  apk update && apk add -q -f dumb-init && rm -rf /var/cache/apk/*

ENTRYPOINT [ "/usr/bin/dumb-init", "--"]
