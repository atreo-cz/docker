FROM php:8.0.1-fpm-buster

RUN apt-get update && apt-get install -y nano libpq-dev && apt-get clean;

RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql pgsql;

#RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
#    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
#    && docker-php-ext-install pdo pdo_mysql;

RUN	echo "upload_max_filesize = 512M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
&&	echo "post_max_size = 512M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
&&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
&&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
&&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini

COPY adminer /srv/adminer

WORKDIR /srv/adminer

CMD	["php", "-S", "[::]:80", "-t", "/srv/adminer"]
EXPOSE 80
