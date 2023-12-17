FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update -y
RUN apt install maven -y
RUN apt install git -y
ENV CLONE_REP=/usr/app
WORKDIR $CLONE_REP
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV BUILD_REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $BUILD_REP
RUN mvn clean package
ENV COMPILE_WAR=/usr/app/boxfuse-sample-java-war-hello/target
WORKDIR $COMPILE_WAR
RUN boxfuse run hello-1.0.war