# Gunakan base image resmi Java 17 dari Amazon ECR Public (bebas rate limit di AWS)
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY target/course-service.jar /app/course-service.jar

# Expose the port the Spring Boot application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "course-service.jar"]