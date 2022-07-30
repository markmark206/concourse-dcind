FROM alpine:3.15

ENV DOCKER_CHANNEL=stable \
    DOCKER_VERSION=20.10.16 \
    DOCKER_COMPOSE_VERSION=1.26.2 \
    DOCKER_SQUASH=0.2.0

RUN apk --update --no-cache add \
        bash \
        curl \
        device-mapper \
        iptables \
        util-linux \
        ca-certificates \
        gcc \
        libc-dev \
        libffi-dev \
        openssl-dev \
        make \
	docker \
	docker-compose

RUN apk upgrade

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
