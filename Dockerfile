FROM maven:3.6.3-openjdk-17 AS MAVEN_TOOL_CHAIN

COPY pom.xml /tmp/
COPY src /tmp/src/
COPY settings.xml /root/.m2/
COPY metrics/extensions/ /tmp/extensions/
WORKDIR /tmp/

RUN mvn package -X

#

#FROM arm64v8/openjdk:17
FROM amd64/openjdk:17
MAINTAINER yabie.com
EXPOSE 8080
COPY target/salesanalytics-0.0.1-SNAPSHOT.jar salesanalytics-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/salesanalytics-0.0.1-SNAPSHOT.jar"]
