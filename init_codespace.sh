# cp .env.example .env

composer install

php artisan key:generate

php artisan storage:link

php artisan migrate:fresh --seed

npm install & npm run build

php artisan serve # or npm run dev