FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk
RUN apt install maven
RUN apt install tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package