# Composer with php 8.1

### Build image
```shell
docker build -t kevinlabre/composer-php-8-1:v1.0.0 .
```
### Create tag
```shell
docker tag kevinlabre/composer-php-8-1:v1.0.0 kevinlabre/composer-php-8-1:v1.0.0
```

### Push image
```shell
docker push kevinlabre/composer-php-8-1:v1.0.0
```

### Use image in other project
```shell
docker run --rm --interactive --tty \                                                               1m 23s 16:09:53
--volume $PWD:/app \
--volume ${COMPOSER_HOME:-$HOME/.composer}:/tmp \
kevinlabre/composer-php-8-1 composer install
```