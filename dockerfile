#getting base image from ubuntu
FROM ubuntu

MAINTAINER Meghana

RUN apt-get update

CMD [ "echo", "this is my first docker image" ]

