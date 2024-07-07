alias docker_proxy='sudo sed 's/^#Env/Env/g' -i /etc/systemd/system/docker.service.d/http-proxy.conf; sudo systemctl daemon-reload; sudo systemctl restart docker '
alias docker_noproxy='sudo sed 's/^Env/#Env/g' -i /etc/systemd/system/docker.service.d/http-proxy.conf; sudo systemctl daemon-reload; sudo systemctl restart docker '

unset_proxy
alias network_restart='sudo systemctl restart systemd-networkd.service'
alias internet='sudo cp -f ~/resolv.conf.internet /etc/resolv.conf ; sudo systemctl restart systemd-networkd.service'


cp env.docker .env

you should update the build definition of the laravel.test container in your application's docker-compose.yml file:
 
# PHP 8.2
context: ./vendor/laravel/sail/runtimes/8.2
image: sail-8.2/app


docker run --rm \
    --network host \
    -e http_proxy=http://localhost:3128 \
    -e https_proxy=http://localhost:3128 \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php82-composer:latest \
    composer install --ignore-platform-reqs

run docker containers

chmod +x ./vendor/laravel/sail/bin/sail
chmod +x ./vendor/bin/sail

./vendor/bin/sail up -d
./vendor/bin/sail artisan key:generate

./vendor/bin/sail artisan storage:link

./vendor/bin/sail artisan migrate:fresh --seed

./vendor/bin/sail npm install
./vendor/bin/sail npm run build

./vendor/bin/sail artisan serve
# or ./vendor/bin/sail npm run dev


./vendor/bin/sail artisan sail:publish

php artisan sail:install --devcontainer



E-mail	Password	Purpose
administrator@genealogy.test	password	to access teams BRITISH ROYALS and KENNEDY as team owner
manager@genealogy.test	password	to access team BRITISH ROYALS as manager
editor@genealogy.test	password	to access team KENNEDY as editor
member_1@genealogy.test	password	to access team BRITISH ROYALS as normal member
member_4@genealogy.test	password	to access team KENNEDY as normal member
developer@genealogy.test	password	to access options reserved for the developer, like the user management and access to all persons in all teams





#############



docker compose --verbose up

user@apertispro:~/github/genealogy-MGeurts[dev]$ docker run -it     --network host     -e http_proxy=http://localhost:3128     -e https_proxy=http://localhost:3128     -v "$(pwd):/var/www/html"     -w /var/www/html     laravelsail/php82-composer:latest /bin/bash


composer install --ignore-platform-reqs


docker exec -it genealogy-mgeurts-laravel.test-1 /bin/bash
php artisan key:generate
php artisan storage:link
php artisan migrate:fresh --seed
npm install
npm run build

php artisan serve
# or npm run dev



docker exec -it genealogy-mgeurts-mysql-1 /bin/bash



