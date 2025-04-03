# Use Maven as the base image
FROM gradle:7.3.3-jdk11

# Set the working directory inside the container
WORKDIR /app

COPY ./target/helloworld-1.0.war /app/

# Command to run the Java application
CMD ["java", "-war", "target/helloworld-1.0.war"]
