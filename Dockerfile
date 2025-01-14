# Use official OpenJDK 17 as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot .jar file into the container
COPY target/spring-petclinic-*.jar app.jar

# Expose the port on which the Spring Boot app will run
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
