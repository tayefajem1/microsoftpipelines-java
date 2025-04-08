# Stage 1: Build the application
FROM gradle:8.13.0-jdk21 AS build
RUN helloworld-1.0-SNAPSHOT.war
WORKDIR /app
COPY . .
RUN gradle build

# Stage 2: Create the runtime image
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/build/libs/helloworld-1.0-SNAPSHOT.war .
CMD ["java", "-war", "helloworld-1.0-SNAPSHOT.war"]
