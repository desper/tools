#!/bin/sh
TOMCAT_ROOT=/usr/apache-tomcat7
APP_NAME=feedback
curl -fsSL https://github.com/javamelody/javamelody/releases/download/javamelody-core-1.79.0/javamelody-core-1.79.0.jar -o javamelody.jar
curl -fsSL https://repo1.maven.org/maven2/org/jrobin/jrobin/1.5.9/jrobin-1.5.9.jar -o jrobin.jar
sudo mv ./javamelody.jar ${TOMCAT_ROOT}/webapps/${APP_NAME}/WEB-INF/lib
sudo mv ./jrobin.jar ${TOMCAT_ROOT}/webapps/${APP_NAME}/WEB-INF/lib
