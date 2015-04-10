require "sinatra"
require "sinatra/json"
require "sinatra/cross_origin"

configure do
  enable :cross_origin
end

get '/' do
	json :productos => ["leche","agua","carne","queso"]

get '/:var' do
	json :foo => params[:var]
end

