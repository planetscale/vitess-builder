FROM docker

RUN apk add --no-cache git make docker-compose bash patch yq go
RUN \
	apk add --no-cache --virtual .build-deps py3-pip && \
	pip3 install --no-cache-dir PyYAML && \
	apk del .build-deps

ADD src /src
WORKDIR /src

ENTRYPOINT ["./build"]

