# Use the official Tomcat base image
FROM tomcat:9.0

# Copy the WAR file into the Tomcat webapps directory
COPY your-application.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080
