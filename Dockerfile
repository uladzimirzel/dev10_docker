FROM ubuntu:20.04
RUN sudo apt update
RUN sudo apt install default-jdk
RUN sudo apt install maven
RUN sudo apt install tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package