# Use the official Java 11 base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

COPY target /app/target/
COPY target/*.jar /app/target/app.jar

# Expose the port that your Spring Boot application runs on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "target/app.jar"]
