# summary
laravel ON nginx/php-fpm/mariadb

# start
```
bash start.sh
```
## if can't use start.sh
```
cp .env_default .env
docker-compose up -d
docker-compose exec php laravel new;
```

# DB settings
fix ```.env``` file
```
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=database
MYSQL_USER=docker
MYSQL_PASSWORD=docker
```

# PROD
replace environments(DOMAINS/STAGE) in https-portal service
```
  https-portal:
    environment:
      DOMAINS: "your.domain -> http://nginx"
      STAGE: "production"
```
