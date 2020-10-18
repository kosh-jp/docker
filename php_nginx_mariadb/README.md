# summary
nginx/php-fpm/mariadb
- xdebug setting for Visual Studio Code
- Github Actions CI. check code by PHP_CodeSniffer and PHPStan

# initial
```
bash init.sh
```

# run phpcs phpstan
```
bash ci.sh
```

# DB settings
fix ```.env``` file
```
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=database
MYSQL_USER=docker
MYSQL_PASSWORD=docker
```

# GitHub Actions local debug
install act
```
brew install act
```
add install composer step to ```.github/workflow/php.yml```
```
- name: Setup PHP with composer v2
  uses: shivammathur/setup-php@2.6.0
  with:
    php-version: '7.4'
    tools: composer
```
```
act -P ubuntu-latest=shivammathur/node:latest
```
