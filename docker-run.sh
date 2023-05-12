#!/bin/sh

docker run --rm \
  --name kotlin-test \
  -d \
  -p 8080:8080 \
  --env PARAM1=param1val \
  --env SECRET_KEY=secretlocal \
  495665774687.dkr.ecr.eu-north-1.amazonaws.com/back-kotlin-test:latest
