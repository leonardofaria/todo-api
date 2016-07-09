# Reminders

This is an assignment of my Server Side course, from [Web and Mobile App Design and Development](http://langara.ca/programs-and-courses/programs/web-and-mobile-app/index.html) program, performed in [Langara College](http://langara.bc.ca).

It's a simple REST API, created using Sinatra and ActiveRecord

## Installation

Clone, install dependencies, setup database (`config/environments.rb`), start server

* `git clone git@github.com:leonardofaria/reminders-api.git`
* `bundle install`
* `rake db:migrate`
* `ruby ./app.rb -o 0.0.0.0`

## Deployment

This app is ready to use in Heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Usage

Open your favourite HTTP client.