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
	par = params[:var]
	if par == "leche"
		json ["Entera","Pasteurizada","Baja en grasa"]
	elsif par == "agua"
		json ["Con gas", "Sin gas"]
	elsif par == "carne"
		json ["Res","Pescado","Pollo"]
	elsif par == "queso"
		json ["Gouda","Holandes","Azul"]
	end
end

