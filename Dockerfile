FROM tomcat:8
MAINTAINER Yaoel Von <yaoelvon@gmail.com>
ENV REFRESHED_AT 2016-12-19

ADD ./datahubWeb.war /usr/local/tomcat/webapps/
RUN cp ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
CMD ["catalina.sh", "run"]

