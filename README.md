# README

$docker-compose up -d
$docker exec -it web /bin/bash

$bundle install
$bundle exec rails db:create  
$bundle exec rails db:migrate  
$bundle exec rails s -b 0.0.0.0

$docker-compose stop
