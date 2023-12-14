FROM maven:3.6.1-jdk-11 as maven_builder
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello