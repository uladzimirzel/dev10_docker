FROM maven:3.6.1-jdk-11 as maven_builder
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $REP
RUN mvn clean package
ENV FILE=/boxfuse-sample-java-war-hello/target/hello-1.0

FROM eclipse-temurin:21-jdk-jammy
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
EXPOSE 8080
ENTRYPOINT []
CMD ["catalina.sh", "run"]