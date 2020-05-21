FROM php:7.2-cli-alpine

WORKDIR /application

# Install RSYNC
RUN apk add rsync

# Install GIT
RUN apk add git

# Install NPM
RUN apk add --update npm

# Install Composer
RUN apk add composer && composer global require hirak/prestissimo

# Install PHP Components
RUN apk add --update --no-cache libintl icu icu-dev libxml2-dev \
  freetype-dev libjpeg-turbo-dev libmcrypt-dev libpng-dev libxslt-dev

RUN docker-php-ext-install bcmath gd intl soap xsl zip pdo_mysql sockets 
