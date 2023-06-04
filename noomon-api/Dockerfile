# Use a base image with Java and Gradle
FROM adoptopenjdk:11-jdk-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the Gradle files
COPY build.gradle gradle.properties settings.gradle /app/

# Copy the Gradle wrapper files
COPY gradlew /app/
COPY gradle /app/gradle

# Download and install the dependencies
RUN ./gradlew --no-daemon dependencies

# Copy the application source code
COPY src /app/src

# Build the application
RUN ./gradlew --no-daemon assemble

# Expose the port used by the application (if applicable)
EXPOSE 8080

# Start the application
CMD ["./gradlew", "--no-daemon", "run"]
