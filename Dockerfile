FROM tomcat:9.0-alpine
FROM maven:latest
WORKDIR /etc/test
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello /etc/test