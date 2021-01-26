#!/bin/bash
if [ "$1" == on ] || [ "$1" == start ]
then
    echo -e "\e[94mstarting services"
    sudo service nginx start > /dev/null
    echo -e "\e[32mnginx service is started"
    sudo service php8.0-fpm start > /dev/null
    echo -e "\e[32mphp8.0-fpm service is started"
    sudo service postgresql start > /dev/null
    echo -e "\e[32mpostgresql service is started"
    sudo service redis-server start > /dev/null
    echo -e "\e[32mredis-server service is started"
fi

if [ "$1" == off ] || [ "$1" == stop ]
then
    echo -e "\e[91mstopping services"
    sudo service nginx stop > /dev/null 
    echo -e "\e[32mnginx service is stopped"
    sudo service php8.0-fpm stop > /dev/null
    echo -e "\e[32mphp8.0-fpm service is stopped"
    sudo service postgresql stop > /dev/null
    echo -e "\e[32mpostgresql service is stopped"
    sudo service redis-server stop > /dev/null
    echo -e "\e[32mredis-server service is stopped"
fi

if [ "$1" == status ]
then
    echo -e "\e[94mshowing status"
    sudo service --status-all
fi
