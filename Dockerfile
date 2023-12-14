FROM maven:3.6.1-jdk-11 as maven_builder
ENV APP=/usr/app
WORKDIR $APP
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $REP
RUN mvn clean package