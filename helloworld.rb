require "sinatra"
require "sinatra/json"
require "sinatra/cross_origin"

configure do
  enable :cross_origin
end

get '/' do
	json ["leche","agua","carne","queso"]
end

get '/:var' do
	json :foo => params[:var]
end

