# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8


EXPOSE:8080

# copy the packaged jar file into our docker image
ADD target/docker-jenkins-integration.jar  docker-jenkins-integration.jar



# set the startup command to execute the jar
ENTRYPOINT ["java", "-jar", "/docker-jenkins-integration.jar"]