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
