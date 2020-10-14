cp .env_default .env;
. .env
docker-compose up -d;
docker-compose exec php composer create-project "laravel/laravel=$LARAVEL_VERSION" . --prefer-dist
