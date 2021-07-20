FROM ubuntu:latest
MAINTAINER "ragava"
RUN apt update
Run apt install -y nginx
COPY index.html /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
