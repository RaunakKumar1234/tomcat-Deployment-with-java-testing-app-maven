FROM tomcat:9-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR (Tomcat can explode it now)
COPY target/TomcatTestApp.war /usr/local/tomcat/webapps/ROOT.war
