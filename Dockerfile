#FROM maven:3.6.1-jdk-11 as maven_builder
#ENV HOME=/usr/app
#RUN mkdir -p $HOME
#WORKDIR $HOME
#RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
#ENV REP=/usr/app/boxfuse-sample-java-war-hello
#WORKDIR $REP
#RUN mvn clean package
#RUN mv $RUN_MVN/target/hello-1.0/ ~/
FROM tomcat:9.0.84-jdk11-temurin-jammy
CMD ["catalina.sh", "run"]
ENV MV_FILE=/usr/local/tomcat/
WORKDIR $MV_FILE
RUN cp -r webapps.dist/* webapps
FROM maven:3.6.1-jdk-11 as maven_builder
RUN mkdir -p $MV_FILE/repos