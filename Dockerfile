#Pull base image
From tomcat:9-jre11

#Maintainer
MAINTAINER Meghana "MeghanaTammina.ce@gmail.com"

EXPOSE 8080

RUN rm -rf /usr/local/tomcat/webapps/*

#copy war file on to container
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war
