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

### Create a list

`curl -d "name=test&color=cccccc" http://localhost:9393/lists`

`name` and `color` are required parameters. `color` must be a hexadecimal color (ex.: cccccc)

### Read all lists

`curl http://localhost:9393/lists`

### Update a list

`curl -X PUT -d "name=test&color=cccccc" http://localhost:9393/lists/:id`

### Delete a list

`curl -X DELETE http://localhost:9393/lists/:id`

Deleting a list will also deleted all its tasks

### Create a task

`curl -d "name=task&list_id=1" http://localhost:9393/tasks`

`name` and `list_id` are required parameters.

### Read all tasks

`curl http://localhost:9393/tasks`

### Update a task

`curl -X PUT -d "name=test&list_id=1" http://localhost:9393/tasks/:id`

### Delete a task

`curl -X DELETE http://localhost:9393/tasks/:id`

*****

P.S.: If you don't like cURL you can use [httpie](https://github.com/jkbrzt/httpie) or [Postman](https://www.getpostman.com/)

#### httpie

![httpie](https://raw.github.com/leonardofaria/todo-api/master/public/httpie.png)

#### Postman

![Postman](https://raw.github.com/leonardofaria/todo-api/master/public/postman.png)
