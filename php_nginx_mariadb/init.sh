cp .env_default .env;
. .env
docker-compose up -d;
docker-compose exec php composer install;
