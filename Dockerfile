FROM tomcat:8
MAINTAINER Yaoel Von <yaoelvon@gmail.com>
ENV REFRESHED_AT 2016-12-19

COPY ./tomcat-users.xml /usr/local/tomcat/conf/
COPY ./datahubWeb.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
