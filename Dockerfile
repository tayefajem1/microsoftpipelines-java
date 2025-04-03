# Use Tomcat as the base image
FROM tomcat:9.0-jdk11

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into the Tomcat webapps directory
COPY ./target/helloworld-1.0.war ./helloworld.war

# Expose port 8080
EXPOSE 8080

# The default command to run Tomcat is already set in the base image
