FROM registry.aws.mxj.io/nginx/nginx-php-fpm
USER root
ADD . /usr/share/nginx/html
ADD start.sh /start.sh
RUN chmod 777 /start.sh
RUN rm -f /etc/nginx/conf.d/default.conf
ADD vhost.conf /etc/nginx/conf.d
