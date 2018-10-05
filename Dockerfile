FROM openjdk:8
# Take the war and copy to webapps of tomcat
COPY target/*.war /app.war
EXPOSE 8000
ENTRYPOINT ["java -jar /var/lib/jenkins/jetty-runner-9.4.9.v20180320.jar /app.war""]
