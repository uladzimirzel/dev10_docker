FROM openjdk:11
FROM tomcat:9.0-alpine
CMD [ "docker run -it --rm -p 8080:8080 tomcat:9.0-alpine" ]