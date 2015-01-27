require "sinatra"
require "sinatra/json"
require "sinatra/cross_origin"

configure do
  enable :cross_origin
end

get '/' do
	json :foo => 'bar'
end

get '/:var' do
	json :foo => params[:var]
end

