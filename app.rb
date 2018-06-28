<<<<<<< HEAD
require 'sinatra'
require "sinatra/cookies"
require "byebug"

get "/" do
  @name = nil || cookies[:name]
  erb :'home'
end

post "/" do
	cookies[:name] = params["name"]
	byebug
  redirect "/"
end
=======
require 'sinatra'
require "sinatra/cookies"
require "byebug"

get "/" do
  @name = nil || cookies[:name]
  erb :'home'
end

post "/" do
	cookies[:name] = params["name"]
	byebug
  redirect "/"
end
>>>>>>> 07e93a2db969fc7a996edf35b1c7d52047f780a0
