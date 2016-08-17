FROM php:7.0-fpm
#~~~ DEPENDENCIES ~~~#

# Add PHP repository to apt source
RUN apt-get update \
    && apt-get install -y \
        libpng12-dev \
        libjpeg-dev  \
        curl \
        sed \
        zlib1g-dev \
    && docker-php-ext-install \
        zip \
        mysqli \
        pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#RUN echo 'source /etc/'
#~~~ DIRS ~~~#
WORKDIR /var/www/html/

RUN usermod -u 1000 www-data
