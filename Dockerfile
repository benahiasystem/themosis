FROM php:7.4-fpm

ARG user
ARG uid

WORKDIR /var/www/html/themosis
VOLUME [ "/var/www/html/themosis" ]

RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    unzip \
    curl \
    vim \
    git \
    libzip-dev \
    libpq-dev \
    libssl-dev  \
    libcurl4-openssl-dev \
    pkg-config \
    libxml2-dev \
    iputils-ping \
&&  docker-php-ext-install soap \
    gd \
    zip \
    pdo \
    pdo_mysql\
    mysqli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

USER $user

COPY composer.json composer.lock ./
CMD bash -c "composer install && php console migrate"