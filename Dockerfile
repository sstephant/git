FROM alpine

LABEL maintainer Bill Wang <ozbillwang@gmail.com>

RUN apk --update add git git-lfs git-flow openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
