FROM maven:3.9-sapmachine-21 AS build
COPY . etc/app
WORKDIR etc/app
RUN ["mvn","clean","install"]

FROM alpine:3.20.0
RUN apk add openjdk21-jre
COPY --from=build etc/app/target application
WORKDIR application
ENTRYPOINT ["java","-jar","employeemanager-0.0.1-SNAPSHOT.jar"]