# Dockerfile
FROM php:8.1-cli

# Docker Composer: Install
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y zip unzip && \
    apt-get install -y rsync && \
    apt-get install -y zlib1g-dev && \
    apt-get install -y libpng-dev && \
    apt-get install -y libzip-dev && \
    docker-php-ext-install pdo pdo_mysql gd zip

# Set Working Directory
WORKDIR /app

# Copy app source
COPY . .