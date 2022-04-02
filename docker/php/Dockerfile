FROM php:8.1.4-fpm

# install git
RUN apt-get update && \
    apt-get install -y git unzip libzip-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev

# install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer self-update

# install ext
RUN docker-php-ext-install zip pdo_mysql mysqli

# install gd

RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd

# RUN pecl install xdebug \
#    && docker-php-ext-enable xdebug
