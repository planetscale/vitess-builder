FROM docker:dind

ENV DOCKER_TLS_CERTDIR=
ENV DOCKER_HOST=tcp://localhost:2375
ENV RUN_DOCKER=1

RUN apk add --no-cache git make docker-compose bash patch yq go
RUN \
	apk add --no-cache --virtual .build-deps py3-pip && \
	pip3 install --no-cache-dir PyYAML && \
	apk del .build-deps

ADD src /src

ENTRYPOINT ["/src/build"]

