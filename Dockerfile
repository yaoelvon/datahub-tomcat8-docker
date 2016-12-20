FROM tomcat:8
MAINTAINER Yaoel Von <yaoelvon@gmail.com>
ENV REFRESHED_AT 2016-12-19

COPY ./tomcat-users.xml /usr/local/tomcat/conf/
RUN mkdir -p /appdata/tomcat/webapps/
RUN ln -s /appdata/tomcat/webapps/ /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
