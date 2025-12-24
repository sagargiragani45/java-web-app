FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR as ROOT.war
COPY target/simple-java-webapp-1.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 6005

