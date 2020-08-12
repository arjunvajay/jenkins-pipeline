#!/bin/bash
echo "************************************"
echo "******** Testig the Code ***********"
echo "************************************"

WORKSPACE=/var/lib/jenkins/workspace/jenkins-pipeline
#docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine mvn test
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
