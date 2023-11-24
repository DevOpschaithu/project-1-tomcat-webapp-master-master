# Pull base image 
FROM tomcat:9-jre9

# Maintainer
MAINTAINER "schaithanya455@gmail.com" 
COPY ./project-1-tomcat-webapp.war /usr/local/tomcat/webapps
