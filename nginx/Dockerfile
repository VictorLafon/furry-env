FROM nginx:latest

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./symfony3.conf /etc/nginx/conf.d/symfony3.conf

RUN usermod -u 1000 www-data
