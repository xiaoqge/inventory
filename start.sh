#!/bin/bash


sed -i -e "s/error_reporting =.*=/error_reporting = E_ALL/g" /etc/php5/fpm/php.ini
sed -i -e "s/display_errors =.*/display_errors = On/g" /etc/php5/fpm/php.ini
sed -i -e "s/upload_max_filesize =.*/upload_max_filesize = 50m/g" /etc/php5/fpm/php.ini
sed -i -e "s/max_execution_time =.*/max_execution_time = 500/g" /etc/php5/fpm/php.ini
sed -i -e "s/post_max_size =.*/post_max_size = 20m/g" /etc/php5/fpm/php.ini


# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf
