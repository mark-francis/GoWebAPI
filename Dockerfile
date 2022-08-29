FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 
RUN cd /build && git clone https://github.com/mark-francis/GoWebAPI.git

RUN cd /build/GoWebAPI && go build

EXPOSE 8080

ENTRYPOINT [ "/build/GoWebAPI" ]