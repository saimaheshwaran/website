
# Use an official OpenJDK 21 runtime as a parent image
FROM eclipse-temurin:21-jdk-alpine
LABEL authors="saimaheshwaran"

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY target/website-0.0.1.jar /app/sai-website.jar

# Expose the port your Spring Boot app runs on (default 8080)
# EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "sai-website.jar"]