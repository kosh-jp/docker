# summary
laravel ON nginx/php-fpm/mariadb

# initial
```
bash init.sh
```

# restart project
```
bash start.sh
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
