FROM ubuntu:18.10
MAINTAINER jolmos@arsys.es

RUN useradd jorge

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee> Hello Arsys!!!</marquee>' \ 
   > /var/www/html/index.html

RUN apt-get update

EXPOSE 80
# prueba de comentario
ENV DATABASE _IP 192.167.2.9

RUN usermod -aG sudo jorge

USER jorge

#ENTRYPOINT ["nginx","-g","daemon off;"]


