FROM golang:alpine

MAINTAINER ZhouChuang

# 工作目录
WORKDIR $GOPATH/src/gin_docker

ADD . ./

# go moudle代理
ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io"

RUN go build -o gin_docker .

# 暴露端口
EXPOSE 8080

# 运行 docker 命令
ENTRYPOINT ["./gin_docker"]