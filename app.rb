require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/category'
require './models/task'

get '/categories' do
  Category.all.to_json
end

get '/categories/:id' do
  Category.where(id: params['id']).first.to_json
end

post '/categories' do
  if params.has_key?('name')
    category = Category.create(name: params['name'])
  end
end

put '/categories/:id' do
  category = Category.where(id: params['id']).first
  if category
		category.name = params['name'] if params.has_key?('name')
    category.save
  end
end

delete '/categories/:id' do
  Category.where(id: params['id']).destroy_all
end

after do
  # Close the connection after the request is done so that we don't
  # deplete the ActiveRecord connection pool.
  ActiveRecord::Base.connection.close
end
