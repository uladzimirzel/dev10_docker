FROM maven:3.9.6-eclipse-temurin-11 AS build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $REP
RUN mvn clean package
RUN cp -r target/hello-1.0/* ~/
FROM tomcat:9.0.84-jdk11-temurin-jammy
CMD ["catalina.sh", "run"]
ENV MV_FILE=/usr/local/tomcat/
RUN cp -r webapps.dist/* webapps