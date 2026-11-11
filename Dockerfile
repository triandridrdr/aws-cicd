# Gunakan base image resmi Java 17 headless dari Amazon ECR Public
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-al2023-headless

# Set working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY target/course-service.jar /app/course-service.jar

# Expose the port the Spring Boot application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "course-service.jar"]