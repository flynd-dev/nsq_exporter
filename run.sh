#!/bin/bash

docker rm nsq-exporter
docker rmi nsq-exporter
docker build -t nsq-exporter:latest .
docker run -p 9117:9117 -d --name nsq-exporter nsq-exporter