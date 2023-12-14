FROM maven:3.6.1-jdk-11 as maven_builder
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $REP
RUN mvn clean package
ENV FILE=/boxfuse-sample-java-war-hello/target/hello-1.0
FROM tomcat:9.0-jre8-alpine
ENV TOMCAT=/usr/local/tomcat/webapps
WORKDIR $FILE
COPY $FILE $TOMCAT