FROM maven:3.9-sapmachine-21 AS build
COPY . etc/app
WORKDIR etc/app
RUN ["mvn","clean","install"]

FROM tomcat:9-jdk21-openjdk
COPY --from=build etc/app/target application
WORKDIR application
ENTRYPOINT ["java","-jar","employeemanager-0.0.1-SNAPSHOT.jar"]