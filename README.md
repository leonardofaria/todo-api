# Todo API

This is an assignment of Server Side course, from [Web and Mobile App Design and Development](http://langara.ca/programs-and-courses/programs/web-and-mobile-app/index.html) program, performed in [Langara College](http://langara.bc.ca).

It's a simple REST API, created using Sinatra and ActiveRecord.

## Installation

Clone, install dependencies, setup database (`config/environments.rb`), run migrations, add initial data, start server

* `git clone git@github.com:leonardofaria/todo-api.git`
* `bundle install`
* `rake db:migrate`
* `rake db:seed`
* `shotgun config.ru`

## Deployment

This app is ready to use in Heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Usage

Open your favourite HTTP client and start your requests.

### Create a list (post)

`curl -d "name=test&color=cccccc" http://localhost:9393/lists`

`name` and `color` are required parameters. `color` must be a hexadecimal color (ex.: cccccc)

### Read all lists (get)

`curl http://localhost:9393/lists`

### Update a list (put)

`curl -X PUT -d "name=test&color=cccccc" http://localhost:9393/lists/:id`

### Delete a list (delete)

`curl -X DELETE http://localhost:9393/lists/:id`

Deleting a list will also deleted all its tasks

### Create a task (post)

`curl -d "name=task&list_id=1" http://localhost:9393/tasks`

`name` and `list_id` are required parameters.

### Read all tasks (get)

`curl http://localhost:9393/tasks`

### Update a task (update)

`curl -X PUT -d "name=test&list_id=1" http://localhost:9393/tasks/:id`

### Delete a task (delete)

`curl -X DELETE http://localhost:9393/tasks/:id`

*****

### Notes

* If you want to restore the initial data go to http://localhost:9393/refresh
* If you don't like cURL you can use [httpie](https://github.com/jkbrzt/httpie) or [Postman](https://www.getpostman.com/):

#### httpie

![httpie](https://raw.github.com/leonardofaria/todo-api/master/public/httpie.png)

#### Postman

![Postman](https://raw.github.com/leonardofaria/todo-api/master/public/postman.png)


## Group

* Leonardo Faria
* Sabrina Silveira