# Use a base image with Java installed
FROM openjdk:17-jdk-alpine

# Set a working directory (optional)
WORKDIR /app

# Copy the JAR file into the image
COPY target/*.jar app.jar

# Set the entry point to run your JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]