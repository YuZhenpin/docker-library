FROM golang:alpine

ENV workspace=/go_cli
ENV GOPATH=${workspace}
ENV GOBIN=${GOPATH}/bin
ENV PATH=${PATH}:${GOBIN}

WORKDIR ${workspace}
COPY src ${workspace}

RUN mkdir bin \
    && apk add --no-cache git \
    && go get github.com/urfave/cli \
    && go install

CMD ["go_cli"]
