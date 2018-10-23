FROM ubuntu:18.10
MAINTAINER jolmos@arsys.es

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee> Hello Arsys!!!</marquee>' \ 
   > /var/www/html/index.html

RUN apt-get update

EXPOSE 80
# prueba de comentario
WORKDIR /var/www/html/

ENTRYPOINT ["nginx","-g","daemon off;"]


