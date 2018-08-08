require 'sinatra'
require "sinatra/cookies"
require "byebug"

get "/" do
  # name = nil if cookies name is empty
  @name = nil || cookies[:name]
  # show home view
  erb :'home'
end

post "/" do
  # set the params become cookies name
  cookies[:name] = params["name"]
  # run homapage again
  redirect "/"
end