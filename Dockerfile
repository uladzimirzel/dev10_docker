FROM tomcat:9.0.84-jdk11-temurin-jammy
CMD ["catalina.sh", "run"]
ENV MV_FILE=/usr/local/tomcat/
WORKDIR $MV_FILE
RUN cp -r webapps.dist/* webapps

FROM maven:3.6.1-jdk-11 as maven_builder
ENV GIT_REP=/usr/app
RUN mkdir -p $GIT_REP
WORKDIR $GIT_REP
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
ENV RUN_MVN=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $RUN_MVN
RUN mvn clean package
RUN cp -r target/* usr/local/tomcat/webapps/ROOT