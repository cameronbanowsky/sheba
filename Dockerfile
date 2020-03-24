FROM golang

ADD . /go/src/github.com/uss-mil/sheba

WORKDIR /go/src/github.com/uss-mil/sheba

RUN go get ./...

RUN go install github.com/uss-mil/sheba

RUN go get ./...
ENTRYPOINT /go/bin/sheba

EXPOSE 1337
