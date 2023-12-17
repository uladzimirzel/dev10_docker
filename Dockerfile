FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN sudo apt update -y
RUN sudo apt install maven -y
RUN sudo apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN boxfuse run target/hello-1.0.war