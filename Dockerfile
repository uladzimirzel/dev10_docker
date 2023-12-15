FROM maven:3.6.1-jdk-11 as maven_builder
FROM eclipse-temurin:11-jdk-jammy
CMD ["catalina.sh", "run"]