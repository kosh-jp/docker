# summary
CakePHP ON nginx/php-fpm/mariadb

# start
```
bash start.sh
```

## if can't use start.sh
```
docker-compose up -d
docker-compose exec php bash
composer create-project --prefer-dist cakephp/app .
```
