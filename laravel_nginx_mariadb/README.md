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

# usage redis docker image
## rewrite laravel env  

```
CACHE_DRIVER=redis
...
SESSION_DRIVER=redis
...
REDIS_HOST=redis
```

# usage MinIO(local s3 debug)
## rewrite laravel env  
```
AWS_ACCESS_KEY_ID=access
AWS_SECRET_ACCESS_KEY=password
AWS_DEFAULT_REGION=ap-northeast-1
AWS_BUCKET=test
AWS_ENDPOINT=http://minio:9000
AWS_PATH_STYLE_ENDPOINT=true
```

## access minio and make bucket
http://localhost:19000  
make bucket(laravel env:AWS_BUCKET)  

# usage mailhog(local mail hosting docker container)
## rewrite laravel env  
```src/.env
MAIL_DRIVER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=[user_name]
MAIL_PASSWORD=[password]
MAIL_FROM_ADDRESS=[your_mail]
```

## access to mailhog
localhost:8025  
