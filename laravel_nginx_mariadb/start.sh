cp .env_default .env;
docker-compose up -d;
docker-compose exec php composer install;
cp src/.env.local src/.env;
docker-compose exec php bash -c '
  php artisan key:generate;
  php artisan cache:clear;
  pho artisan config:clear;
  php artisan config:cache;
  php artisan migrate;
';
