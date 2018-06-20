FROM java:latest
FROM tomcat
MAINTAINER "jayant <jayantsoni1431@gmail.com>
USER root
RUN mkdir MYAPP
add ./target/web.war MYAPP
add ./target/web.war /usr/local/tomcat/webapps
add ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
add ./context.xml /usr/local/tomcat/webapps/manager/META-INF
add ./context.xml /usr/local/tomcat/webapps/host-manager/META-INF
FROM nginx
add ./nginx.conf /etc/nginx
WORKDIR MYAPP
#CMD ["java","-jar","web.war"]
#EXPOSE 8076
