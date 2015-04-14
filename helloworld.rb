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
		json [{"nombre"=>"Entera","source"=>"https://allbingeandnopurge.files.wordpress.com/2012/08/photo42.jpg"},{"nombre"=>"Pasteurizada","source"=>"http://www.pe.all.biz/img/pe/catalog/18157.jpeg"},{"nombre"=>"Baja en grasa","source"=>"http://celema.co/wp-content/uploads/2013/04/LecheBajaEnGrasa2.jpg"}]
	elsif par == "agua"
		json [{"nombre"=>"Con gas","source"=>"http://www.chicanol.com/wp-content/uploads/2013/04/Agua-con-Gas-o-sin-Gas.jpg"},{"nombre"=>"Sin gas","source"=>"http://www.buenasalud.net/wp-content/uploads/imagenes/drinkwater400x300.jpg"}]
	elsif par == "carne"
		json [{"nombre"=>"Res","source"=>"https://www.info7.mx/foto/560000/567479_carne-res-mexico-rusia.jpg"},{"nombre"=>"Pescado","source"=>"http://static.hogarutil.com/archivos/201210/nutricion-pescado-colesterol-obesidad-xl-668x400x80xX.jpg"},{"nombre"=>"Pollo","source"=>"http://www.recetin.com/wp-content/uploads/2014/02/pollo_despiece.jpg"}]
	elsif par == "queso"
		json [{"nombre"=>"Gouda","source"=>"http://www.1001consejos.com/wp-content/uploads/2012/04/bola-de-queso-gouda.jpg"},{"nombre"=>"Roquefort","source"=>"http://imdoc.es/content/6/5/4/66540/El-queso-Roquefort_diaporama_550.jpg"},{"nombre"=>"Parmesano","source"=>"http://www.livianito.com/wp-content/uploads/2011/11/queso-parmesano-300x213.jpg"}]
	end
end

