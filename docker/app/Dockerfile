FROM php:8.1-apache

WORKDIR /var/www/html

COPY . /var/www/html/

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN docker-php-ext-install pdo pdo_mysql

RUN apt update && apt install git -y

RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-install zip

RUN cd backend && composer install

EXPOSE 80