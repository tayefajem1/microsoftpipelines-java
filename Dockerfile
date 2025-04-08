# Stage 1: Build the application
FROM gradle:8.13.0-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle build

# Stage 2: Create the runtime image
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/build/libs/helloworld-1.0-SNAPSHOT.jar .
CMD ["java", "-jar", "helloworld-1.0-SNAPSHOT.jar"]
