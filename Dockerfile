FROM tomcat:latest

MAINTAINER Hani

ADD ./webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [ "catalina.sh" , "run"]
CMD [ " Sleep(10) "] 
CMD [ "catalina.sh" , "STOP"]
