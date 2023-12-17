FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update -y
RUN apt install maven -y
RUN apt install git -y
ENV CLONE_REP=/usr/app
WORKDIR $CLONE_REP
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd ~/usr/app/boxfuse-sample-java-war-hello
RUN mvn package
RUN boxfuse run target/hello-1.0.war