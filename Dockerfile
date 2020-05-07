FROM java:8

MAINTAINER "sanjayhacks4567@gmail.com"
RUN sudo chmod 777 /var/run/docker.sock
RUN echo "we are building docker image"
VOLUME /tmp
ADD target/my-app-1.0-SNAPSHOT.jar /my-app.jar
RUN bash -c 'touch /my-app.jar'
ENTRYPOINT ["java","-jar","/my-app.jar"]


