FROM tomcat:8
MAINTAINER Yaoel Von <yaoelvon@gmail.com>
ENV REFRESHED_AT 2016-12-19

RUN mkdir -p /appdata/tomcat/webapps/
RUN ln -s /appdata/tomcat/webapps/ /usr/local/tomcat/webapps/
RUN pwd
RUN ls -al
RUN cp ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
CMD ["catalina.sh", "run"]

