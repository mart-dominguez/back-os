#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
LABEL maintainer="mdomingu@gmail.com" 
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Run stage
#
FROM openjdk:11.0.7-slim
LABEL maintainer="mdomingu@gmail.com" 
COPY --from=build /home/app/target/demo-0.0.1-SNAPSHOT.jar /opt/demo-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java","-jar","/opt/demo-0.0.1-SNAPSHOT.jar"]
