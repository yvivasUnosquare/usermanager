FROM tomcat:9-jdk21-openjdk
COPY target/employeemanager-0.0.1-SNAPSHOT.jar employeemanager-0.0.1.jar
ENTRYPOINT ["java","-jar","employeemanager-0.0.1.jar"]