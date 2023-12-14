FROM tomcat:9.0-alpine
FROM maven:latest
RUN apt-get update && apt-get install -y git
RUN cd /etc/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello