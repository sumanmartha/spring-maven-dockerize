FROM openjdk:8-jre-alpine
# copy WAR into image
COPY target/spring-boot-0.0.1-SNAPSHOT.jar /app.jar
# run application with this command line 
# EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.jar"]
