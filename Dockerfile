FROM tomcat:9.0.84-jdk11-temurin-jammy
CMD ["catalina.sh", "run"]
ENV MV_FILE=/usr/local/tomcat/
WORKDIR $MV_FILE
RUN cp webapps.dist/* webapps