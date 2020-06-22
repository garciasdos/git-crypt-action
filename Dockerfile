FROM alpine:3.12

RUN apk --update add git-crypt

ENTRYPOINT ["/entrypoint.sh"]
