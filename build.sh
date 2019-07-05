#!/bin/bash
mvn clean package
docker image build --build-arg JAR_FILE='./target/docker-java-spring-0.1.0.jar' . --tag 629536794089.dkr.ecr.us-east-2.amazonaws.com/test:lastest

docker run -d -p 8080:8080 local:local
