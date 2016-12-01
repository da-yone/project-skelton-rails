# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

// dockerhubに登録するまで必要
$docker build -t dayone80/project-skelton-rails  

$docker-compose up  
$docker-compose run rails db:create  
$docker-compose run rails db:migrate  
