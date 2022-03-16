# we will use openjdk 8 
FROM java:8-jdk


EXPOSE:8080

# copy the packaged jar file into our docker image
ADD target/docker-jenkins-integration.jar  docker-jenkins-integration.jar



# set the startup command to execute the jar
CMD ["java", "-jar", "/docker-jenkins-integration.jar"]