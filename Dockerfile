FROM golang:1.10

EXPOSE 9117

ENV APPPATH $GOPATH/src/github.com/flynd-dev/nsq_exporter
COPY . $APPPATH
RUN cd $APPPATH && go get -d && go build -o /nsq_exporter

ENTRYPOINT ["/nsq_exporter"]
