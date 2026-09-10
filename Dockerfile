# 1. Tomcat 9 with Java 11
FROM tomcat:9.0-jdk11-openjdk

# 2. Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy your WAR file and deploy it as ROOT application
COPY CbseSiteWithJava.war /usr/local/tomcat/webapps/ROOT.war

# 4. Tomcat port
EXPOSE 8080

# 5. Start Tomcat
CMD ["catalina.sh", "run"]