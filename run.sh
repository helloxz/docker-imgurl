#!/bin/sh
##########		name:Onenav容器运行入口			##########
##########		update:2021/03/22				##########
##########		author:xiaoz<xiaoz93@outlook.com>	######

#onenav_path='/data/wwwroot/default'

#start redis
redis-server /etc/redis.conf
sleep 10
#start php-fpm
php-fpm7 -RD
sleep 5
#start nginx
/usr/sbin/nginx
sleep 5
tail -f /var/log/nginx/error.log
