# Use the official Java 11 base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

COPY target /app/target/
RUN mv target/*.jar target/app.jar


# Command to run the Spring Boot application
CMD ["java", "-jar", "target/app.jar"]