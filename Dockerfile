FROM maven:latest as maven_builder
ENV APP=/usr/app
COPY . $APP
WORKDIR $APP
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $REP
RUN mvn clean package