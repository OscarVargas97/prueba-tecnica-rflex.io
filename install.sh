cd ./backend && docker-compose build
docker-compose up -d 
docker-compose exec laravel.test php artisan migrate
docker-compose exec laravel.test php artisan db:seed
docker-compose exec laravel.test php artisan app:charge-data
cd ../frontend && docker-compose build
cd ../