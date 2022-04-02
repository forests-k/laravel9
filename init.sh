set -e

echo container start
docker-compose up -d --build

cp ./healthstock/.env.example ./healthstock/.env

echo install composer
docker-compose run --rm healthstock_php-fpm composer install

echo migrate
docker-compose run --rm healthstock_php-fpm php artisan migrate --seed

echo test
docker-compose run --rm healthstock_php-fpm php vendor/bin/phpunit tests/Feature/HealthCheckTest.php
