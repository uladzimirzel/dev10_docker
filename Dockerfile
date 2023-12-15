#FROM maven:3.6.1-jdk-11 as maven_builder
#ENV HOME=/usr/app
#RUN mkdir -p $HOME
#WORKDIR $HOME
#RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
#ENV REP=/usr/app/boxfuse-sample-java-war-hello
#WORKDIR $REP
#RUN mvn clean package
#RUN mv $RUN_MVN/target/hello-1.0/ ~/
FROM maven:3.6.1-jdk-11 as maven_builder
FROM tomcat:9.0.84-jdk11-temurin-jammy
CMD ["catalina.sh", "run"]
ENV MV_FILE=/usr/local/tomcat/
WORKDIR $MV_FILE
RUN cp -r webapps.dist/* webapps
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR $MV_FILE/boxfuse-sample-java-war-hello
RUN mvn clean package
WORKDIR $MV_FILE
RUN cp -r boxfuse-sample-java-war-hello/target/* webapps