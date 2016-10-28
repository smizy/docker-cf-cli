FROM alpine:3.4
MAINTAINER smizy

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.license="Apache License 2.0" \
    org.label-schema.name="smizy/cf-cli" \
    org.label-schema.url="https://github.com/smizy" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-url="https://github.com/smizy/docker-cf-cli"

ENV CF_CLI_VERSION  $VERSION

RUN set -x \
    && apk --no-cache --update add \
        bash \
        ca-certificates \
        wget \
    && wget -q -O - 'https://cli.run.pivotal.io/stable?release=linux64-binary&version='${CF_CLI_VERSION} \
        | tar -xzf - -C /usr/local/bin