FROM php:7.3.27-fpm-buster

RUN apt-get update && apt-get install -y nano zip libzip-dev git && apt-get clean;

RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install zip;

RUN	echo "upload_max_filesize = 512M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
    &&	echo "post_max_size = 512M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
    &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
    &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini \
    &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer

# Install composer1
RUN curl -o /usr/local/bin/composer1 https://getcomposer.org/download/1.10.22/composer.phar
RUN chmod +x /usr/local/bin/composer1

# Resolve permissions
ARG www_data_uid=501
ARG www_data_gid=20
RUN deluser www-data && (addgroup --gid $www_data_gid www-data || addgroup --gid 33 www-data) && adduser --system --home /home/www-data --uid $www_data_uid --disabled-password --group www-data;
RUN mkdir /srv/app && chown -R www-data:www-data /srv/app
USER www-data

WORKDIR /srv/app
