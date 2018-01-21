require 'sinatra'

get "/" do
  @name = nil
  erb :'home'
end

post "/" do
  redirect "/"
end
