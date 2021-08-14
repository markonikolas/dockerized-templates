FROM php:7.2-apache

WORKDIR /var/www/html/
COPY . /var/www/html

# Install dependencies
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y software-properties-common && \
    apt-get install -y libicu-dev libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
    libfreetype6-dev vim less && \
    docker-php-ext-install mysqli pdo pdo_mysql intl gd && \
    a2enmod rewrite && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Install WordPress-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# Fix WordPress syncing
USER root
RUN useradd --create-home --shell /bin/bash admin
RUN chown admin:www-data -R /var/www/html/web/wp
RUN chmod 775 -R /var/www/html/web/wp
USER admin

EXPOSE 80
