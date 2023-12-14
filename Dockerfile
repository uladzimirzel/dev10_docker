FROM ubuntu:20.04
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven
RUN apt install -y tomcat9
FROM https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd ~/boxfuse-sample-java-war-hello
RUN mvn package