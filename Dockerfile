FROM ubuntu:20.04
#RUN apt update
#RUN apt install -y default-jdk
#RUN apt install -y maven
#RUN apt install -y tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
#RUN mvn package