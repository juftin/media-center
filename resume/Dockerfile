FROM ubuntu:20.04
MAINTAINER Justin Flannery "juftin@juftin.com"

USER root

RUN apt-get update
RUN apt-get install -y nginx nodejs

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 7856

CMD service nginx start