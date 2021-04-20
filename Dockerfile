FROM docker

RUN apk add --no-cache git make docker-compose bash patch

ADD src /src
WORKDIR /src

ENTRYPOINT ["./build"]

