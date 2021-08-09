# README

Rock, paper, scissors apllication. It makes a thrid party integration, no database is needed.
Works with a single route and a single controller that calls a Service Object to get data from a third party API.

Things you may want to cover:

* Ruby version

  2.7.4
* System dependencies

* Configuration

  docker-compose up --build
* Database creation

  docker-compose run web rake db:create
* Database initialization

* How to run the test suite

  docker-compose run web bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)
  POST /games/create #Which return the result of the game and its original user_move 

* Deployment instructions

* ...
