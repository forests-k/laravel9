FROM nginx:1.21.6

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./conf.d/server.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y curl